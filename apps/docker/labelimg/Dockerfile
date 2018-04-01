FROM tzutalin/py2qt4

RUN git clone https://github.com/tzutalin/labelImg /labelImg
RUN cd /labelImg && make qt4py2

CMD [ "/labelImg/labelImg.py" ]
