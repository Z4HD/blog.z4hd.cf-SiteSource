import subprocess
import webbrowser

hexo = subprocess.Popen('hexo server', shell=True)

webbrowser.open_new_tab('http://localhost:4000')

hexo.wait()
#hexo.kill()