# homebrew-ramgotti

Homebrew tap for [램고치 (RAMgotti)](https://github.com/project-hh-com/ramgotti) — 맥북 램 누수를 털어내는 초경량 화면 위 플로팅 펫.

## 📦 설치

한 줄로 간편 설치:
```bash
brew install --cask project-hh-com/ramgotti/ramgotti
```

또는 탭 추가 후 설치:
```bash
brew tap project-hh-com/ramgotti
brew install --cask ramgotti
```

## 🗑️ 제거

```bash
brew uninstall --cask ramgotti
```

설정 및 캐시까지 완전히 삭제:
```bash
brew uninstall --cask --zap ramgotti
```

## 🛡️ 게이트키퍼(Gatekeeper) 자동 처리

이 앱은 Homebrew Cask의 `postflight` 훅을 통해 설치 직후 `com.apple.quarantine` 속성을 자동으로 제거합니다. 따라서 Apple Developer ID 유료 인증서 서명이 없어도 **"손상되어 열 수 없습니다"** 경고 없이 바로 실행할 수 있습니다.
