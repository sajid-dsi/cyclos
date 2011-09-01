<div style="page-break-after: always;"
<span class="admin"> <a name="top"></a>
<p class="head_description">Cyclosでは、任意のCyclosシステムファイルを修正することによって、ユーザーインタフェースを変更できます。
さらに、修正を.themeファイルにパッケージ化して、他のCyclosユーザーと共有することが可能です。<br>
このことは、事実上、あなたが基本的に、あなたやあなたのメンバーがブラウザで見ることになるページについてのすべてを制御できることを意味します。つまり、コンテンツと外観は操作できます。</p>
<a name="type_list"></a> あなたは以下のタイプのファイルをカスタマイズできます:
<ul>
	<li><b><a href="#statics"><u>静的ファイル</u></a> </b>
	<li><b><a href="#helps"><u>ヘルプファイル</u></a> </b>
	<li><b><a href="#jsp"><u>アプリケーションページ</u></a></b>
	<li><b><a href="#css"><u>CSSファイル</u></a></b>
	<li>これらに加えて、<a href="#images"><u>画像</u></a>もカスタマイズできます。

	
	<li><b><a href="#themes"><u>テーマ</u></a>:</b> あらゆる種類のファイルを変更するという面倒なしで、別の事前に定義されたレイアウトに切り替えることができます。
</ul>
<b>重要:</b> これらの種類のファイルの編集が込み入った仕事になるということに留意してください。それを行うには、CSSとHTMLについての知識が必要になるでしょう。
<p>

システムレベル（このヘルプファイルにより扱われている）においてだけでなく、<a href="${pagePrefix}groups#manage_group_customized_files"><u>グループレベル</u></a>においても、そして、<a
	href="${pagePrefix}groups#manage_group_filter_customized_files"><u>グループフィルタレベル</u></a>においてさえも、カスタマイズされたファイルを設定できるということに留意してください。
<p><i>どこで見つけられる？</i><br>
システムの広範なレベルにおけるコンテンツ管理には、メインメニュー、項目「コンテンツ管理」を通じてたどり着けます。<br>
グループレベルでコンテンツ管理を行うためには、<a
	href="${pagePrefix}groups#manage_groups"><u>グループウィンドウを管理する</u></a>に行き、<img border="0" src="${images}/edit.gif"
	width="16" height="16">&nbsp; グループの編集アイコンをクリックして下さい。
この主題は、グループヘルプファイル内で扱われています。<br>
グループフィルタレベルでコンテンツ管理を行うためには、「メニュー:
ユーザーとグループ > グループフィルタ」に行き、<img border="0"
	src="${images}/edit.gif" width="16" height="16">&nbsp; グループフィルタの編集アイコンをクリックして下さい。
	またもや、この主題は、グループヘルプファイル内で扱われています。
<p><i>どうやって動かす？</i><br>
コンテンツ管理に関するメニュー項目が表示されるようにするには、<a
	href="${pagePrefix}groups#manage_group_permissions_admin_system"><u>
管理者許可</u></a>を設定する必要があります。
「メニュー: コンテンツ管理」内の項目の可視性に影響する項目がいくつかあります。
以下のブロックが当てはまります:
<ul>
	<li>「カスタマイズされた画像」
	<li>「システム全般のカスタマイズされたファイル」
	<li>「テーマ」
</ul>

<hr>

<a name="statics"></a>
<h3>静的ファイル</h3>
これらは、あなたの組織に合わせてカスタマイズできるアプリケーション内の完全なページです。<br>
これらのファイルを修正するには、HTMLの知識が必要とされます。
HTMLタグを完全に残し、アプリケーションタグ内のコンテンツを修正しないように気をつけてください。（タグはすべて&lt;と&gt;の中にあります。）
<p>その機能により、以下の静的ファイルの修正が可能になります（もっと多くのファイルが追加されているかもしれないため、このリストは古いかもしれません）:
<ul>
	<li><b>contact.jsp:</b> メンバーセクションのメニュー内にひょじされるページ、つまり、「メニュー: ヘルプ > コンタクト」。あなたの組織に連絡する方法に関する情報を示すものです。
	<li><b>general_news.jsp:</b> Cyclosのメンバーセクション内のホームページにある<a
	href="${pagePrefix}home#home_news"><u>一般的なお知らせ（メッセージボード）</u></a>ウィンドウ内に表示される一般的なお知らせメッセージ。
	<li><b>login.jsp:</b> ログインページのレイアウト（ログインページのテキストは、翻訳機能内で修正できます）。
	<li><b>member_about.jsp:</b> メンバーおよび管理者セクションのメニュー内に表示されるページ: 「メニュー: ヘルプ > Cyclosについて」
	<li><b>posweb_footer.jsp:</b> 外部支払いモジュールPoswebのページフッター。（メンバーによりカスタマイズ可能）
	<li><b>posweb_header.jsp:</b> 外部支払いモジュールPoswebのページヘッダー。（メンバーによりカスタマイズ可能）
	<li><b>posweb_login.jsp:</b> 外部支払いモジュールPoswebのログインページヘッダー。
	<li><b>top.jsp:</b> アプリケーションの一般的な見出し。
	<li><b>webshop_footer.jsp:</b> 外部支払いモジュールWebshopのページフッター。
	<li><b>webshop_header.jsp:</b> 外部支払いモジュールWebshopのページヘッダー。

</ul>
静的ファイルの本文内に<a href="#insert_images"><u>画像</u></a>を挿入することもできます。
<hr class="help">

<a name="helps"></a>
<h3>ヘルプファイル</h3>
あなたは、特定のヘルプファイルが説明している<a
	href="#jsp"><u>アプリケーションファイル</u></a>を変更した場合や、単に、元の本文が十分に明瞭でないと思う場合に、ヘルプファイルを変更したいかもしれません。<br>
ヘルプファイルを修正したい場合には、その名称とそのファイル内のジャンプ先のタグを知っている必要があります。
ヘルプファイルは、主な主題ごとに組織化されています。
約30のヘルプファイルがあり、それらの各々がいくつかのヘルプウィンドウのテキストを含んでおり、タグを通じてこれらのウィンドウテキストにジャンプします。<br>
ファイル名とタグ名を見出すためには、マウスポインタをヘルプアイコン（各ウィンドウの右上）に重ねなければなりません。
あなたのブラウザのステータスバーに位置、つまり、「Help:file_name#tag_name」が表示されます。
この場合、ファイルは「file_name.jsp」で、ヘルプファイル内のセクション（タグ）は「tag_name」と呼ばれます。
ヘルプファイル内で、このタグ名は&lt;a name="tag_name"&gt;...&lt;/a&gt;タグの中に置かれます。<br>
あなたのブラウザは、ステータスバーメッセージを隠すかもしれないことに留意して下さい。上記の場所がヘルプファイルの位置を表示しない場合は、ブラウザの設定を変更して、「ステータスバーメッセージを表示する」が設定されていることを確認してください。<p>あなたは、ヘルプファイルの本文内に<a href="#insert_images"><u>画像</u></a>を挿入してもよいですが、ヘルプウィンドウは300×400ピクセルしかないので、画像サイズに注意してください。
<hr class="help">

<a name="jsp"></a>
<h3>アプリケーションページ</h3>
アプリケーションページは、ページ上に要素を配置するためのコードを含むCyclos内の.jspファイルですが、本文を含んでいません。
事実上、これは、いかなるjspファイルもヘルプ本文を含まないということを意味します。
これらの.jspファイルは、あなたがブラウザで見るページ内のどこに何が表示されるかを定義します。<br>
レイアウト構造全体を修正できますが、それはシステムの内部変数とアプリケーションの機能に深刻な影響を与え得ます。
したがって、アプリケーションファイルを修正する際には、慎重に使って下さい。
小さなレイアウト変更のためにのみ、それらを修正することが推奨されます。
例えば、要素の順序を変更したい場合や、ある要素がページ内に見えないようにしたい場合です。
また、それを行う前に、あなたの目的が、プログラムの管理者セクションから通常のCyclos設定によって達成できないかどうか確認して下さい。
<p>問題を避けるために、Cyclosは常に容易に入れ替えられる<a
	href="#edit_customized_file"><u>元のページ</u></a>のコピーを保持しています。</p>
<p>また、jspファイルのコンテンツ内に<a href="#insert_images"><u>画像</u></a>を挿入してもよいでしょう。
<hr class="help">

<a name="css"></a>
<h3>CSSファイル</h3>
CSSファイル（カスケーディング・スタイルシート）は、ページ内の諸要素がどのように見えるかを定義します。
特定の要素が別様に見えるようにしたい場合は、これを変更したいかもしれません。
例えば、ボタンをもっと強調したり、メニュー項目をもっと明るくしたりする場合です。スタイルシートを修正するには、CSSファイル注釈の知識が必要とされます。

<p>Cyclosには以下のスタイルシートファイルがあります:
<ul>
	<li><b>style.css</b><br>
	Cyclosのレイアウト（メニュー、ウィンドウ、トップ）のための主要なスタイルシートファイルです。
	
	<li><b>login.css</b><br>
	ログインページのためのスタイルシート
	<li><b>mobile.css</b><br>
	モバイルページのためのスタイルシート
	<li><b>posweb.css</b><br>
	Poswebページのためのスタイルシート
	<li><b>ieAdjust.css</b><br>
	Internet Explorerとの互換性問題を解決するために使われます。
</ul>
<p>CSSファイル修正の効果を見るためには、ブラウザでページを更新しなければならないかもしれません。
これは、「www.yourdomain.org/cyclos/pages/styles/style.css」に行くことによって行えます。<br>
CSSのコンテンツは、テキストとして表示されます。
新しいページがアクティブであるかどうかを確認するために、ブラウザでそのページを数回更新することができます。
<p>新しいCSSファイルを使いたい場合は、（スタイルシート編集ウィンドウ内で）単にコンテンツ全体をコピーして、それを既存のスタイルシートに上書きして、上記のようにページを更新して下さい。
<p>素敵なCSSファイルを作り上げた場合は、是非、私たちにそれを送って下さい。
そうすると、私たちは他のユーザーもそれを利用可能なようにすることができます。
そのスタイルシートは、Sourceforgeとプロジェクトサイトで公開されるでしょう。
<hr class="help">

<a name="insert_images"></a>
<h3>テキストファイル内の画像</h3>
<a href="#statics"><u>
静的ファイル</u></a>や<a href="#helps"><u>ヘルプ</u></a>ページのようなテキストファイル内に画像を挿入することが可能です。
これを行うためには、画像がアプリケーションから利用可能でなければなりません。
どの<a
	href="#system_images"><u>システム画像</u></a>が利用可能かをチェックしたり、「メニュー: コンテンツ管理 > カスタム画像」から、あなた自身で画像をアップロードしたりすることができます。
ページ内に画像を挿入するには、静的ファイルの最初に以下のタグが置かれる必要があります:
<p><i>&lt;%@ taglib
uri="http://jakarta.apache.org/struts/tags/struts-html" prefix="html"
%&gt;</i>
<p>そして、画像の配置はこのようになります:
<p><i>&lt;img src="&lt;html:rewrite
page="/pages/images/some_image.jpg"/&gt;"&gt;</i>
<p>画像の配置のためにページが必要とするのは、「html:rewrite」タグのみです。
border, align, width, heightのような通常のHTMLアーギュメントを使えます。
<hr class="help">

<a name="customized_files"></a>
<h3>カスタマイズされたファイル</h3>
<b>注:</b> このヘルプファイルは、このフォームの機能に関する一般的な情報しか示しません。
あなたは、あなたがカスタマイズしたい種類のファイルに関する具体的な情報やTipsについては、<a href="#type_list"><u>このリスト</u></a>をチェックして、そのファイルタイプのリンクを辿りたいかもしれません。
<p>このウィンドウは、<a href="#top"><u>カスタマイズ</u></a>されているファイルのリストを表示します。
あなたには以下のオプションがあります:
<ul>
	<li><b>新しいファイルをカスタマイズする:</b> 「新しいファイルをカスタマイズする」というラベルの付いた送信ボタンをクリックすることにより、新しいファイルをカスタマイズして下さい。
	<li><img border="0" src="${images}/preview.gif" width="16"
		height="16">&nbsp; ビューは、結果のプレビューを可能にします。
	<li><img border="0" src="${images}/edit.gif" width="16"
		height="16">&nbsp; カスタマイズされたファイルの編集ができます。	<li><img border="0" src="${images}/delete.gif" width="16"
		height="16">&nbsp; 消去アイコンをクリックすることにより、カスタマイズされたファイルがリストから消えます。
	これは、そのファイルの最新の修正が見える状態のままですが、Cyclosの最初のアップデートの際に標準のページによって置き換えられることを意味します。
</ul>
注1: ファイル名が赤色で表示される場合、それは競合があることを意味します。
競合を処理する方法についての説明は、<a
	href="#edit_customized_file"><u>カスタマイズされたファイルを編集する</u></a>ヘルプページにて見つけられます。<br>
注2: この機能を初めて使う際には、あなたのリスト内には1つもカスタマイズされたファイルがないかもしれず、そのため、アイコンが1つも見えないでしょう。
これは、あなたがカスタマイズしたいファイルのタイプに依ります。
<hr class="help">

<a name="edit_customized_file"></a>
<h3>カスタマイズされたファイルを編集する</h3>
<b>注:</b> このヘルプセクションは、このフォームの機能に関する一般的な情報しか示しません。
あなたは、あなたが<a href="#top"><u>カスタマイズ</u></a>したい種類のファイルに関する具体的な情報やTipsについては、<a href="#type_list"><u>このリスト</u></a>をチェックして、そのファイルタイプのリンクを辿りたいかもしれません。
<p>このウィンドウでは、あなたが以前カスタマイズしたファイルを再び修正できます。
いつものように、「変更」ボタンをクリックして、フィールドの修正を始め、「送信」をクリックして、あなたの変更を保存して下さい。
<ul>
	<li><b>ファイル名:</b> ファイル名を示します。これは修正できません。
	<li><b>コンテンツ:</b> ここでは、そのファイルのコンテンツを作成／修正できます。
	HTMLタグとXMLタグを使えるので、例えば、Cyclos内の他のセクションへのクイックリンクのついたツールバーのある「一般的なお知らせ」ページのような多くのことが可能です。
	また、振る舞いを定めるためにJavascriptを追加しても良いでしょう。
	ただし、これは高度なプログラミングです。それについては、<a
		href="http://project.cyclos.org/wiki/index.php?title=Programming_guide#JSP"><u>Cyclosプログラミングガイド</u></a>を参照して下さい。
	<li><b>元のコンテンツ:</b> このファイルがカスタマイズされる前の元のコンテンツを表示します。
	<a href="#customized_files"><u>リスト</u></a>からカスタマイズされたファイルを消去すると、元のコンテンツが再び適用されます。
	もちろん、あなたが定めたコンテンツが機能しないようである場合は、
	「元のコンテンツ」の内容を「コンテンツ」ボックスにコピー／貼り付けすることができます
	<li><b>新しいコンテンツ:</b> Cyclosをアップデート／アップグレードし、新しいバージョンのファイルがある場合には、
	Cyclosはそのファイルを新しいコンテンツで置き換えませんが、（システム）アラートを生成します。
	新しいコンテンツは、このエリア内に得られます。
	<li><b>競合を解決する:</b> カスタマイズされた新しいバージョンのファイルがある時には、
	Cyclosはシステムアラートを生成し、その新しいバージョンを「新しいコンテンツ」エリア内に置きます。
	また、「競合している」カスタマイズされたファイルの名称が、カスタマイズされたファイルのリスト内で、赤色で現れます。<br>
	一度その競合が解決され、すべてが正しく機能すると、あなたは「競合を解決する」オプションを選択して、そのファイルを保存できます。
	これを行った後、そのファイル名はもはやファイルリストで赤く表示されず、
	そのファイルの新しいコンテンツが元のコンテンツエリアに移されます。
</ul>
<hr class="help">

<a name="edit_new_customized_file"></a>
<h3>（新しい）ファイルをカスタマイズする</h3>
このウィンドウでは、<a href="#top"><u>カスタマイズ</u></a>を始めるファイルを選ぶことができます。
「ファイル選択」ドロップダウン内で、カスタマイズしたいファイルを選んで下さい。
あなたは、このドロップダウン内に直接リスト表示されたファイルを見るか、これらのファイルが置かれるかもしれないディレクトリを見ても良いでしょう。
ディレクトリやサブディレクトリの場合には、「ファイル選択」ドロップダウン選択でディレクトリツリーをブラウズできます。
ディレクトリは、選択ボックスの上にある「パス」フィールド内にリスト表示されます。
選択ボックスの隣の「上へ」リンクを選択することにより、もっと上のディレクトリに移動できます。
ファイルを含むディレクトリに辿り着くと、ファイルを選択でき、そのコンテンツが下のテキストアリア内に表示されます。<br>
それから、「変更」ボタンをクリックすると、そのファイルを編集できます。
「送信」ボタンをクリックして、あなたの行った変更を保存して下さい。
<p>変更済みのカスタマイズしたファイルを保存する際には、元のコンテンツは保存されカスタマイズされたファイルの下に表示されます。
アップグレードがインストールされた際には、Cyclosはカスタマイズされたファイルを保持しますが、元のコンテンツとアップグレード内の新しいファイルのコンテンツに差異があるかどうかチェックします。
もし、差異があれば、元のコンテンツの下に新しいコンテンツが置かれます。
「解決する」を選択すると、新しいコンテンツが元のコンテンツのエリアへと移動します。
<p>ファイルのカスタマイズを（それをリストから除くことにより）止めると、元のコンテンツが使われます。
<hr class="help">

<a name="images"></a>
<p class="sub_description">
<h2>画像のカスタマイズ</h2>
Cyclos内の画像をカスタマイズすることもできます。
一組のシステム画像がありますが、あなた独自の画像をアップロードして、それらを任意のカスタマイズされたファイルの中で使い始めることもできます。
</p>
あなたは「メニュー: コンテンツ管理」を通じて、あなたの画像をアップロードできます。そこでは、<a href="#system_images"><u>システム画像</u></a>を変更したり、あなた独自の<a href="#custom_images"><u>カスタム画像</u></a>をアップロードしたり、<a href="#style_images"><u>スタイルシート画像</u></a>をアップロードしたりすることができます。
<hr>

<A NAME="system_images"></A>
<h3>システム画像</h3>
<p>このウィンドウは、Cyclos内の現在のシステム<a
	href="#images"><u>画像</u></a>のリストを表示します。
リスト内の画像サムネイルをクリックすると、ポップアップ・ウィンドウ内に実寸大の画像が表示されます。
あなたは、下の<a href="#images_upload"><u>
更新ウィンドウ</u></a>内で、システム画像を置き換えられます。</p>
<hr class="help">

<A NAME="custom_images"></A>
<h3>カスタム画像</h3>
<p>このウィンドウは、Cyclos内のカスタム<a href="#images"><u>画像</u></a>のリストを表示します。
リスト内の画像サムネイルをクリックすると、ポップアップ・ウィンドウ内に実寸大の画像を表示します。
カスタム画像は、<a href="#statics"><u>静的ファイル</u></a>、<a href="#helps"><u>ヘルプファイル</u></a>内で、また、メッセージ内でさえ使えます。
<p>あなたは、<img border="0"
	src="${images}/delete.gif" width="16" height="16">&nbsp;消去アイコンを選択して、画像を消去できます。<br>
下の<a href="#images_upload"><u>
更新ウィンドウ</u></a>内で、カスタム画像を追加できます。</p>
<hr class="help">

<A NAME="style_images"></A>
<h3>スタイルシート画像</h3>
<p>スタイルシート画像は、ウィンドウ見出し、メニュー項目、ボタン、背景のようなCyclosのレイアウト内で使える<a href="#images"><u>画像</u></a>です。
あなたは、これらの画像を<a href="#css"><u>CSSファイル</u></a>内で使うでしょう。
<p><img border="0"
	src="${images}/delete.gif" width="16" height="16">&nbsp;消去アイコンを選択して、画像を消去できます。<br>
リスト内の画像サムネイルをクリックすると、ポップアップ・ウィンドウ内に実寸大の画像が表示されます。
あなたは、下の<a
	href="#images_upload"><u>更新ウィンドウ</u></a>内でカスタム画像を追加できます。</p>
<hr class="help">

<A NAME="images_upload"></A>
<h3>画像アップロード</h3>
<p><a href="#system_images"><u>システム画像</u></a>の場合は、まず、「新規アップロード」ドロップダウンボックス内の上のリストから名称を選ぶことによって、どの画像を置き換えたいかを選択して下さい。
このドロップダウンは、<a
	href="#custom_images"><u>カスタム画像</u></a>または<a
	href="#style_images"><u>スタイルシート画像</u></a>をアップロードする際には見えないということに留意して下さい。<br>
それから、「ブラウズ」ボタンをクリックして、あなたのローカルコンピュータまたはネットワーク上のアップロードしたい画像を探して下さい。
それがjpg, jpeg, gif, pngの拡張子であることを確認して下さい。
この後、「送信」をクリックして下さい。
新しい画像が上のリストウィンドウ内に現れます。</p>
<hr class="help">

<a name="themes"></a>
<p class="sub_description">
<h2>テーマ</h2>
テーマは、時には「スキン」と呼ばれることもありますが、Cyclosのレイアウト（ログインステータストップバー、左メニュー、機能ウィンドウ内）を定義します。
テーマ機能は、一般的なスタイルシートファイルとスタイルシート画像を編集する必要なくレイアウトを切り替える素早い方法です。
</p>
テーマ機能は、「メニュー: コンテンツ管理 > テーマ」を通じて見つけられます。
<hr>


<A NAME="select_theme"></A>
<h3>テーマ選択</h3>
<p>別の<a href="#themes"><u>テーマ</u></a>を選択するには、「テーマ」ドロップダウンボックスから１つを選び、それから、「適用する」というラベルの付いた送信ボタンをクリックしなければなりません。
テーマが表示されるようにするには、あなたのブラウザを更新しなければならないでしょう。
ブラウザキャッシュをクリアする必要がある場合もあります。<br>
以前にこの機能を使ったことがない場合は、テーマが1つも利用可能ではなく、空のドロップダウンボックスになるかもしれないことに留意して下さい。
そのような場合には、まず新しいテーマを<a href="#import_theme"><u>インポート</u></a>しなければならないでしょう。
<p>「削除する」というラベルの付いた送信ボタンをクリックすると、そのテーマは削除され、カスタムレイアウト修正は消去されます。
そのため、<a href="#css"><u>一般的スタイルシート</u></a>や<a href="#style_images"><u>スタイルシート画像</u></a>を独自にカスタマイズした場合には、まずそれをテーマとして<a href="#export_theme"><u>エクスポート</u></a>したいかもしれません。そうすると、それを後で再びインポートすることは容易です。
テーマ機能は、スタイルシートのみに影響を与え、<a href="#statics"><u>静的ファイル</u></a>と<a href="#helps"><u>ヘルプファイル</u></a>には影響を与えません。
<hr class="help">

<A NAME="import_theme"></A>
<h3>新しいテーマをインポートする</h3>
<p>この機能により、<a href="#themes"><u>テーマ</u></a>をインポートすることができます。
Cyclosのテーマは.themeという拡張子を持ちます。
ただ「ブラウズ」ボタンを使って、そのファイルの位置へとブラウズし、「送信」をクリックして下さい。</p>
<hr class="help">

<A NAME="export_theme"></A>
<h3>現在の設定をテーマとしてエクスポートする</h3>
<p>あなた独自の<a href="#themes"><u>テーマ</u></a>を（<a href="#css"><u>スタイルシートファイル</u></a>および／または<a
	href="#style_images"><u>スタイルシート画像</u></a>の修正によって）作成した場合には、そのテーマを.themeファイルとしてエクスポートできます。<br>
この機能により、現在のアクティブなテーマをエクスポートすることが可能になります。
単にフィールドに記入して、下の「送信」ボタンをクリックして下さい。<br>
下のチェックボックスにチェックすることにより、テーマファイルの一部をエクスポートすることもできます。
3つのオプションが利用可能です:
<ul>
	<li><b>システム</b> これらは中核的な<a href="#jsp"><u>.jsp</u></a>
	ファイルと<a href="#css"><u>.css</u></a>ファイルです。</li>
	<li><b>ログインページ</b> これは最初のログインページです。</li>
	<li><b>モバイル</b> これらは携帯電話によるアクセスのためのページです。</li>
</ul>
<p><i>あなた独自のテーマを開発した場合には、それらをCyclos開発チームに送信することを検討して下さい。</i>
そうすると、私たちはCyclosの他のユーザーがそれを利用可能な様にすることができます。
<hr class="help">

</span>

</div> <%--  page-break end --%>

<div class='help'>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>


