var currentChosenDetails = undefined;
var currentChosenDelete = false;
var deleteTimer = undefined;
const DROP_THRESH = 20000;
import { db } from '../firebase.js';
function showModal(details) {
    $('.modal-back').removeClass('hidden-modal');
    $('.modal-back').addClass('show-modal');
    $('#subject').val($(details).find('h3').text());
    $('#teacher').val($($(details).find('p')[0]).text());
    $('#comment').val($($(details).find('p')[1]).text());
    $('#entry_id').val($(details).parent().attr('id'));
}

function hideModal() {
    $('.modal-back').removeClass('show-modal');
    $('.modal-back').addClass('hidden-modal');
}

function createDetails(subject, teacher, comment, id) {
    const detailsDiv = $(`
    <div class="details-container">
        <div class="remove-progress"></div>
        <div class="details">
            <h3>${subject}</h3>
            <p>${teacher}</p>
            <p>${comment}</p>
            <input type="hidden" class="classes-id" value="${id}">
        </div>
    </div>
    `);

    $(detailsDiv).draggable({
        start: function () {
            $(this).addClass('draggable');
        },
        drag: function (event, ui) {
            let position = $(this).data("ui-draggable").position;
            let dist = (position.left * position.left) + (position.top * position.top);
            if (dist >= DROP_THRESH && deleteTimer === undefined) {
                $(this).parent().find('.remove-progress').addClass('remove-active');
                deleteTimer = setTimeout(() => {
                    currentChosenDelete = true;
                }, 1500);
            }
        },
        revert: function (event, ui) {

            $(this).parent().find('.remove-progress').removeClass('remove-active');

            clearTimeout(deleteTimer);
            deleteTimer = undefined;

            if (!currentChosenDelete) {
                return true;
            }
            let id = $(this).find('.classes-id').val();
            deleteClass(id);
            $(this).hide('slow', function () { $(this).remove(); });

            currentChosenDelete = false;
            return false;
        },
        stop: function () {
            $(this).removeClass('draggable');
            // $(this).css('background', '#FFF');
        }
    });

    $(detailsDiv).droppable();

    $(detailsDiv).on('click', function () {
        showModal($(this));
        currentChosenDetails = this;
        $('.my-modal').css({
            'border-left': $(this).find('.details').css('border-left')
        });
    })

    // $(detailsDiv).find('.remove-progress').hide();
    // $(detailsDiv).find('.remove-progress').on('transitionend webkitTransitionEnd oTransitionEnd', function (e) {
    //     $(this).hide('slow');
    //     // $(this).off(e);
    // });
    return $(detailsDiv);
}

function deleteClass(id) {
    if (id !== undefined && id !== "") {
        db.collection('classes').doc(id).delete();
    }
}

function removeClassUi(id) {
    for (let item of $('.classes-id')) {
        if ($(item).val() === id) {
            // $(item).parent().remove();
            $(item).parent().hide('slow', function () { $(item).parent().remove(); });
        }
    }
}

function renderClass(data, id) {
    const entryId = data.entry_id;
    const detailsDiv = createDetails(data.subject, data.teacher, data.comment, id);
    $("#" + entryId).append(detailsDiv);
}

$('.entry').on('click', function () {
    if ($(this).children().length == 0) {
        let detailsDiv = createDetails('', '', '', '');
        $(this).append(detailsDiv);
    }
});

$('.modal-back').on('click', function (e) {
    if ($(e.target).closest('.my-modal').length == 0) {
        hideModal();
    }
});
import { collection, addDoc } from "https://www.gstatic.com/firebasejs/9.6.1/firebase-firestore.js";

// Colecția 'classes' la care vrei să adaugi un document
const classesRef = collection(db, 'classes');
$('#adding-form').on('submit', function (e) {
    e.preventDefault();

    hideModal();
 $.get('/get-user-id/', function(response) {
     const userId = response.user_id;

     const newClass = {
         subject: $('#subject').val(),
         teacher: $('#teacher').val(),
         comment: $('#comment').val(),
         entry_id: $('#entry_id').val(),
         user_id: userId  // Folosește user_id obținut din Django
     };

     deleteClass($(currentChosenDetails).find('.classes-id').val());
     $(currentChosenDetails).remove();

     addDoc(classesRef, newClass).then(docRef => {
         console.log("Document adăugat cu ID-ul: ", docRef.id);
     })
         .catch(err => {
             console.log("Eroare la adăugarea documentului: ", err);
         });
 });
});