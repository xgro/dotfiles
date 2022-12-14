" VIM 옵션
" 구문강조 사용
syntax on

" 자동 들여쓰기
set autoindent

" 스마트한 들여쓰기
set smartindent

" C 프로그래밍용 자동 들여쓰기
set cindent

" 자동 들여쓰기 4칸
set shiftwidth=4

" 탭을 4칸으로
set tabstop=4

" 백업 파일을 안만듬
set nobackup

" 검색할 때 문서의 끝에서 처음으로 안돌아감
set nowrapscan

" 검색시 대소문자 무시, set ic 도 가능
set ignorecase

" 검색어 강조, set hls 도 가능
set hlsearch

" 행번호 표시, set nu 도 가능
set number

" 오리지날 VI와 호환하지 않음
set nocompatible

" 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set backspace=eol,start,indent

" 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set ruler

" 편집 위치에 커서 라인 설정
set cursorline

" 상태바 표시를 항상한다
set laststatus=2

" 키워드 입력시 점진적 검색
set incsearch

" 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fencs=ucs-bom,utf-8,euc-kr.latin1

" 파일저장인코딩
set fileencoding=utf-8

" 터미널 인코딩
set tenc=utf-8

" 하이라이팅 lihgt / dark
set background=dark

" vi 편집기록 기억갯수 .viminfo에 기록
set history=1000

" 색 조정
set t_Co=256

" 코멘트 하이라이트
highlight Comment term=bold cterm=bold ctermfg=4
set wrap
set noswapfile
set lbr

" 키를 잘못눌렀을 때 화면 프레시
"set visualbell

" vim에서 마우스 사용
"set mouse=a

"
" VIM 플러그인 설치 목록
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" VIM 플러그인 관리 플러그인
Plugin 'VundleVim/Vundle.vim'

" Git으로 관리하는 파일의 변경된 부분을 확인
Plugin 'airblade/vim-gitgutter'

" 파일트리
Plugin 'scrooloose/nerdtree'

" 주석
Plugin 'scrooloose/nerdcommenter'

" 소스파일의 클래스, 함수, 변수 정보 창
Plugin 'taglist-plus'

" 상태바(Vim 사용자의 하단 상태바를 변경)
Plugin 'bling/vim-airline'

" 구문 체크
Plugin 'vim-syntastic/syntastic'

" 색상 테마 변경
Plugin 'nanotech/jellybeans.vim'

" 하위 디렉토리 파일 찾기
Plugin 'ctrlpvim/ctrlp.vim'

" 한 화면에서 커서 이동
Plugin 'Lokaltog/vim-easymotion'

" 소스 버전 컨트롤
Plugin 'surround.vim'

" 지정된 위치 프로젝트 파일 찾기
Plugin 'iwataka/ctrlproj.vim'

" 라인 필터링
Plugin 'Quich-Filter'

" 여러 커서에서 동시 수정
Plugin 'terryma/vim-multiple-cursors'

" 저장한 코드 조각 입력
Plugin 'SirVer/ultisnips'

" HTML, CSS 코드 단축 입력
Plugin 'mattn/emmet-vim'

" HTML 단축 입력
Plugin 'HTML.zip'

" 문자열 찾기
Plugin 'rking/ag.vim'

" 라인 범위 지정 후 수정
Plugin 'chrisbra/NrrwRgn'

" 여러 문자열 동시에 강조
Plugin 'MultipleSearch'

" ctags 결과 표시
Plugin 'majutsushi/tagbar'

" 하나의 파일 컴파일 후 실행
Plugin 'xuhdev/SingleCompile'

" 버전 관리 파일 상태 표시
Plugin 'mhinz/vim-signify'

" 라인 정렬
Plugin 'tommcdo/vim-lion'

" Vim에서 git 명령어 사용
Plugin 'tpope/vim-fugitive'

" JSON 파일 보기
Plugin 'elzr/vim-json'

" 자동 완성(Ctrl + P)를 누르지 않음
Plugin 'AutoComplPop'

call vundle#end()

" 파일 종류에 따른 구문강조
filetype plugin indent on 

" vi 색상 테마 설정
colorscheme jellybeans

" 자동 주석 기능 해제
au FileType * setl fo-=cro 

"
" ctrlp.vim 설정
"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }

"
" Tag list 설정
"
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Open = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Inc_Winwidth = 0
let Tlist_Ctags_Cmd = "/usr/bin/ctags"

"
" 단축키
"
map <F3> <C-w><C-v>
map <F4> <C-w><C-w>
map <F5> :NERDTreeToggle<cr>
map <F6> :TlistToggle<cr>