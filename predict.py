import subprocess

def predict(audio_path: str, image_path: str):
    subprocess.run(f"python generate_multitalk.py --audio {audio_path} --image {image_path} --output output.mp4", shell=True)
    return "output.mp4"
