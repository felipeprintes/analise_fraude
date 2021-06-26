FROM python:3.7
WORKDIR src/
COPY . .
RUN pip install jupyter
RUN pip install pandas
RUN pip install sklearn
RUN pip install matplotlib
RUN pip install wordcloud
RUN pip install nltk
RUN pip install seaborn

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]


#docker build -f Dockerfile -t fprintes/jupyter .
#docker run -p 8888:8888 -v "/home/felipe/Área de Trabalho/analise_fraude:/var/www" -w "/var/www" fprintes/jupyter