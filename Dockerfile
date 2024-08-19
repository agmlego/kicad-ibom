FROM ghcr.io/linalinn/kicad:nightly
RUN apt-get update && apt-get install git
WORKDIR /root/.kicad_plugins
RUN git clone https://github.com/openscopeproject/InteractiveHtmlBom.git
ENV INTERACTIVE_HTML_BOM_NO_DISPLAY=1
ENV PYTHONPATH=/usr/lib/kicad-nightly/lib/python3/dist-packages
ENV LD_LIBRARY_PATH=/usr/lib/kicad-nightly/lib/x86_64-linux-gnu
