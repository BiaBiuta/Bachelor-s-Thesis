
from io import BytesIO
from django.http import HttpResponse
from django.template.loader import get_template
# import xhtml2pdf.pisa as pisa


class Render:

    @staticmethod
    def render(path: str, params: dict):
        pass
        # template = get_template(path)
        # html = template.render(params)
        # res = BytesIO()
        # pdf = pisa.pisaDocument(BytesIO(html.encode("UTF-8")), res)
        # if not pdf.err:
        #     return HttpResponse(res.getvalue(), content_type='application/pdf')
        # else:
        #     return HttpResponse("Error Rendering PDF", status=400)