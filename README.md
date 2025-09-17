# 🎨 Text-to-Image Generator (Streamlit + Diffusers)

Ein interaktives **Streamlit Dashboard** zum Generieren von Bildern aus Textprompts mit HuggingFace **Diffusion Models** (z. B. Stable Diffusion, Dreamshaper, Juggernaut-XL).  
Die App läuft **lokal auf deiner GPU** und ermöglicht es dir, verschiedene Modelle auszuprobieren und die Inferenz-Parameter einzustellen.

---

## 🚀 Features

- **GPU Monitoring**: Zeigt VRAM-Status (Total, Used, Free) in der Sidebar an.  
- **Interaktive Oberfläche**:
  - Chat-ähnliches Interface für Prompts
  - Modelle können direkt per Pfad geladen werden  
- **Model-Hilfe**: Erklärungen zu gängigen HuggingFace-Modellen (z. B. Juggernaut, Dreamshaper).  
- **Text-to-Image Generation** mit einstellbaren Inference Steps.  
- **Animations** über Lottie (für ein ansprechendes UI).  

---

## ⚙️ Installation

### 1️⃣ Repository klonen

```bash
git clone https://github.com/dein-user/text2image-streamlit.git
cd text2image-streamlit
```

### 2️⃣ Virtuelle Umgebung erstellen (optional, empfohlen)

```bash
python -m venv venv
source venv/bin/activate   # Linux/Mac
venv\\Scripts\\activate    # Windows
```

### 3️⃣ Abhängigkeiten installieren

```bash
pip install -r requirements.txt
```

### ▶️ Anwendung starten
```bash
streamlit run app.py
```