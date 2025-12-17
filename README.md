# Project Segmentum
프로젝트 세그멘텀은 배치파일을 활용하여 ClassM을 우회하는 프로그램을 만드는 프로젝트입니다. 현재 Pre-Alpha 단계이며 앞으로 여러 업데이트를 진행할 예정입니다.
 * https://bit.ly/쪼무노세그멘텀 을 통해서 빠르게 세그멘텀 깃허브로 갈 수 있습니다.

## Basic Code
ClassM Client를 강제 중지시키는 기본적인 코드이며, Pre-Alpha-1.0 버전의 코드와 동일합니다.
```
@echo off
:classmkill
taskkill /f /im hscagent.exe
goto classmkill
```

