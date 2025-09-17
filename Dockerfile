# app/Dockerfile

FROM python:3.10-bullseye


# Update system packages to address vulnerabilities
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Pakete installieren (mit sauberen APT-Schritten)
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Dein Repo klonen
RUN git clone https://github.com/RiccardoDAndrea/Text-to-Image-Generator-Streamlit-Diffusers-.git .

# Falls du einen bestimmten Branch brauchst, kannst du hier ent-kommentieren:
# RUN git checkout branch_name

# Python-Abhängigkeiten installieren
RUN pip install --no-cache-dir -r requirements.txt

# Standard-Port für Streamlit
EXPOSE 8501

# Healthcheck (prüft, ob Streamlit läuft)
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health || exit 1

# App starten
ENTRYPOINT ["streamlit", "run", "streamlit_t2i.py", "--server.port=8501", "--server.address=0.0.0.0"]
