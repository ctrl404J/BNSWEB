<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="main.NewsVo"%>

<!DOCTYPE html>
<html lang="jp">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>BNS SYSTEM</title>

<!-- Primary Meta Tags -->
<meta name="title" content="BNS SYSTEM">
<meta name="description" content="ビジネスをテクノロジーで">

<!--====== Favicon Icon ======-->
<link rel="shortcut icon" href="assets/images/favicon.svg"
	type="image/svg" />

<!-- ===== All CSS files ===== -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="/assets/css/animate.css" />
<link rel="stylesheet" href="/assets/css/lineicons.css" />
<link rel="stylesheet" href="/assets/css/ud-styles.css" />
<link rel="stylesheet" href="/assets/css/newOne.css" />


</head>
<body>
	<!-- ====== Header Start ====== -->
	<header class="ud-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg">  <!-- Logo -->
						<a class="navbar-brand" href=""> <img
							src="/assets/images/logo/logo.svg" alt="Logo" />
						</a>
						<button class="navbar-toggler">
							<span class="toggler-icon"> </span> <span class="toggler-icon">
							</span> <span class="toggler-icon"> </span>
						</button>
						<div class="navbar-collapse" style="margin:5px;">
							<ul id="nav" class="navbar-nav mx-auto" style="margin:10px;">
								<li class="nav-item"><a class="ud-menu-scroll" href="#home" >ホーム</a>
								</li>

								<li class="nav-item"><a class="ud-menu-scroll" href="#news">お知らせ</a>
								</li>

								<li class="nav-item"><a class="ud-menu-scroll"
									href="#about">会社概要</a></li>
								<li class="nav-item"><a class="ud-menu-scroll"
									href="#keieirinen">経営理念</a></li>
								<li class="nav-item"><a class="ud-menu-scroll"
									href="#service">事業案内</a></li>
								<li class="nav-item"><a class="ud-menu-scroll" href="#team">採用情報</a>
								</li>
								<li class="nav-item"><a class="ud-menu-scroll"
									href="#kyuwujin">就職者登録</a></li>
								<li class="nav-item"><a class="ud-menu-scroll"
									href="#access">アクセス</a></li>
								<li class="nav-item"><a class="ud-menu-scroll"
									href="#contact">お問い合わせ</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ====== Header End ====== -->


	<!-- ====== Hero Start ====== -->
	<section class="ud-hero" id="home"
		style="background-image: url('assets/images/new/skyline17.jpg');">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="ud-hero-content wow fadeInUp" data-wow-delay=".2s">
						<h1 class="ud-hero-title">BNS SYSTEM</h1>
						<p class="ud-hero-desc">
							ビジネスをテクノロジーでサービスに代え<br>客様のニーズにお応えしたい。
						</p>
						<ul class="ud-hero-buttons">
							<li><a href="#about" rel="nofollow noopener"
								class="btn btn-outline-warning"> 会社概要 </a></li>
						</ul>
					</div>
					<div class="ud-hero-brands-wrapper wow fadeInUp"
						data-wow-delay=".3s">
						<br> <br> <br> <br> <br>
					</div>
					<br> <br>
					<!-- 맨위 hero 점박이 이미지 -->
					<!--
					<div class="ud-hero-image wow fadeInUp" data-wow-delay=".25s">
						<img src="assets/images/hero/dotted-shape.svg" alt="shape"
							class="shape shape-1" /> <img
							src="assets/images/hero/dotted-shape.svg" alt="shape"
							class="shape shape-2" />
					</div>
					 -->
					<!-- 맨위 hero 점박이 이미지 -->
				</div>
			</div>
		</div>
	</section>
	<!-- ====== Hero End ====== -->

	<!-- ====== News Start ====== -->

	<section id="news" class="ud-about">
		<div class="container">
			<h3 style="text-align: center; padding-top: 50px;">News</h3>
			<br>
			<div class="table-responsive">
			<table class="table table-hover" style="width: 80%; margin: auto;">
				<caption style="text-align: right;">
					<button type="button" class="btn btn-outline-dark hidden"
						id="prevBtn">以前</button>
					<button type="button" class="btn btn-outline-dark hidden"
						id="nextBtn">次へ</button>
				</caption>
				<tbody class="text-center" id="newsTbody">
					<tr>
						<td><img src="assets/images/new/icons8-cm1.png"
							alt="table-cm-icon" /></td>
						<td class="text-left" width="50%">
							<div class="panel-news-container">
								<p class="panel-news-title"></p>
								<div class="panel-news-answer">
									<p></p>
								</div>
							</div>
						</td>
						<td></td>
					</tr>
				</tbody>
			</table>
			</div>
		</div>
	</section>
	<!-- ====== News End ====== -->

	<!-- ====== About Start ====== -->
	<section id="about" class="ud-about">
		<div class="container">
			<div class="ud-about-wrapper wow fadeInUp" data-wow-delay=".2s">
				<div class="ud-about-content-wrapper">
					<div class="ud-about-content">
						<span class="tag">挨拶</span>
						<h3>ビジネスをテクノロジーでサービスに代えお客様のニーズにお応えしたい</h3>
						<br>
						<p>
							「ビジネスをテクノロジーでサービスに代えお客様のニーズにお応えしたい」 こんな思いからBNSシステムをスタートしました。
							テクノロジーと言っても幅広いものですが、 私達が得意としているITに特化して、
							お客様の様々なビジネスシーンでお役に立てる企業へ社員と共に成長、発展して参ります。
							今後も、お客様の視点でご要望を的確に捉え、積極的に新しいソリューションの増強、
							サービスメニューの拡充を図り、当社の持つソリューションをトータルで 提供させていただきたいと考えております。
							また、技術面・品質面においても一層の研鑽に励み、人材育成とコンプライアンスに
							取り組み、信頼されるパートナーとして、お客様に満足いただけるシステム、 サービスの提供に努力して参る所存です。
							企業としてはまだ足りない部分も御座いますが皆様のご指導を願っております。 何卒ご支援の程、宜しくお願い申し上げます。<a
								href="#gaiyou" style="margin: auto;">概要へ</a>
						</p>
						<p>代表取締役 高 柄華</p>
					</div>
				</div>
				<div class="ud-about-image">
					<img src="assets/images/new/paul-calescu-KW3m50XRhjk-unsplash.jpg"
						width="100%" height="750" alt="about-image" />
				</div>
			</div>
	</div>
	</section>

	<section id="about" class="ud-about">
		<div class="container">
			<div class="ud-about-wrapper wow fadeInUp" data-wow-delay=".2s">

				<div class="ud-about-image">
					<img
						src="assets/images/new/trinity-nguyen-22l_gC9lfRE-unsplash.jpg"
						width="100%" height="800" alt="about-image" />
				</div>
				<div class="ud-about-content-wrapper">

					<div class="ud-gaiyou-content">
						<span class="gaiyoutag" id="gaiyou">会社概要</span>
						<table class="table table-hover">
							<tbody>
								<tr>
									<td colspan="2" class="table-Light" width="30%">商号株式会社</td>
									<td>株式会社BNS SYSTEM (ビーエヌエスシステム)</td>
								</tr>
								<tr>
									<td colspan="2" class="table-Light">所在地</td>
									<td>〒１７６－０００１<br> 東京都練馬区練馬 １ー３４－１４ <br>山章興産ビル
										３０１号
									</td>
								</tr>
								<tr>
									<td colspan="2" class="table-Light">代表取締役</td>
									<td>高 柄華</td>
								</tr>
								<tr>
									<td colspan="2" class="table-Light">設立</td>
									<td>２０１１年１２月２８日（平成２３年）</td>
								</tr>
								<tr>
									<td colspan="2" class="table-Light">労働者派遣事業<br>
										有料職業紹介事業
									</td>
									<td>派１３－３１６０９６<br> １３－ユー３１３６５０
									</td>
								</tr>
								<tr>
									<td colspan="2" class="table-Light">資本金</td>
									<td>５００万円</td>
								</tr>
								<tr>
									<td colspan="2" class="table-Light">TEL</td>
									<td>０３－４２８３－９８６３</td>
								</tr>
								<tr>
									<td colspan="2" class="table-Light">取引銀行</td>
									<td>三菱東京 UFJ 銀行、みずほ銀行、三井住友銀行</td>
								</tr>
								<tr>
									<td colspan="2" class="table-Light">事業内容</td>
									<td>・システム開発、設計及び製作のコンサルタント業務<br> ・Web系・オープン系業務システム開発<br>
										・基盤システムの構築・運用・保守等、トータルサービス
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ====== About End ====== -->

	<!-- ====== rinen Start ====== -->
	<section id="keieirinen" class="ud-about">
		<div class="container">
			<div class="ud-about-wrapper wow fadeInUp" data-wow-delay=".2s">

				<div class="ud-about-content-wrapper">
					<div class="ud-about-content">
						<span class="tag">経営理念</span>
						<h3>
							God Bless You !<br> ビーエヌエスシステムは
						</h3>
						<br>
						<p>
							・感謝 ：感謝の心で社会に貢献する技術を追求します。<br> <br> ・信頼
							：お客様の信頼に応え、お客様とともに繁栄・成長します。<br> <br> ・初心
							：仕事をする時には「初心」に戻って、基本に徹します。<br> <br> ・真理
							：クリスチャン企業として変らない真理・愛の価値を守り続けます。<br> <br>
							を経営理念として「人材育成」、「創意」が出来る企業を目指しております。
						</p>
					</div>
				</div>
				<div class="ud-about-image" style="width: 490;">
					<img
						src="assets/images/new/nikita-kachanovsky-g-YiX8ynmnY-unsplash.jpg"
						width="100%" height="750" alt="about-image" />
				</div>
			</div>
		</div>
	</section>
	<!-- ====== Service Start ====== -->
	<section id="service" class="ud-pricing"
		style="background-image: url('assets/images/new/technology-2082642_1920.jpg'); background-position: left top;">
		<div class="container">
			<div class="ud-about-content-wrapper">
				<div class="ud-about-content">
					<span class="tag">事業案内</span>
					<h3>SERVICE</h3>
				</div>
			</div>

			<div class="row g-3 align-items-center justify-content-center">

				<!-- 1 -->
				<div class="ud-single-pricing first-item wow fadeInUp"
					data-wow-delay=".15s">
					<div class="ud-pricing-header">
						<h4>システムエンジニアリングサービス(SES)</h4>
						<br>
						<h3>
							<b>システムエンジニアリングサービス イメージお客様先での常駐による、システム開発、構築業務を支援いたします。</b>
						</h3>
						<br>
					</div>

					<div class="ud-pricing-body">
						<ul>
							<li>・アプリケーション開発、保守、Java、 .net、PHP、 C言語、Cobol</li>
							<li>・ネットワーク・サーバの構築、運用管理、保守</li>
							<li>・OS : Windows・Linux・Unix等</li>
							<li>・NW : Cisco, Junipe, BIG-IP等</li>
						</ul>
					</div>
				</div>

				<!-- 2 -->
				<div class="ud-single-pricing last-item wow fadeInUp"
					data-wow-delay=".15s">
					<div class="ud-pricing-header">
						<h4>トータルサービス</h4>
						<br>
						<h3>
							<b>基盤システムの構築・運用・保守等、トータルサービス業務</b>
						</h3>
						<br>
					</div>
					<div class="ud-pricing-body">
						<ul>
							<li>ショッピングサイトの構築から、メルマガ配信システム、業務アプリケーションの<br>
								構築などシステム導入後も、御社のビジネスパートナーとして保守・運営をサポートします。<br>
								システムについてのお問合せや、万一の障害発生時も、万全の体制で対応します。<br>
								制作後のアフターフォローも万全です。お客さまのパートナーとしてご相談に応じ、<br> サポート体制を整えております。
							</li>
						</ul>
					</div>
				</div>
				<!-- 3 -->
				<div class="ud-single-pricing last-item wow fadeInUp"
					data-wow-delay=".15s">
					<div class="ud-pricing-header">
						<h4>WEBシステムの受託開発</h4>
						<br>
						<h3>
							<b>WEBシステムの受託開発 イメージインターネット環境下でアプリケーション開発します。<br>
								企画から設計、開発、運用管理、保守まで一貫して支援いたします。
							</b>
						</h3>
						<br>
					</div>
					<div class="ud-pricing-body">
						<ul>
							<li>・業務アプリケーション</li>
							<li>・情報系アプリケーション</li>
							<li>・モバイルアプリケーション</li>
							<li></li>
						</ul>
					</div>
				</div>
				<!-- 4 -->
				<div class="ud-single-pricing first-item wow fadeInUp"
					data-wow-delay=".15s">
					<div class="ud-pricing-header">
						<h4>iPad/iPhone/Androidソリューション</h4>
						<br>
						<h3>
							<b>システムエンジニアリングサービス イメージお客様先での常駐による、システム開発、構築業務を支援いたします。</b>
						</h3>
						<br>
					</div>
					<div class="ud-pricing-body">
						<ul>
							<li>ショッピングサイトの構築から、メルマガ配信システム、業務アプリケーションの構築など<br>
								システム導入後も、御社のビジネスパートナーとして保守・運営をサポートします。<br>
								システムについてのお問合せや、万一の障害発生時も、万全の体制で対応します。<br>
								制作後のアフターフォローも万全です。お客さまのパートナーとしてご相談に応じ、<br> サポート体制を整えております。
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ====== Service End ====== -->

	<!-- ====== Team Start ====== -->
	<section id="team" class="ud-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- <div class="ud-section-title mx-auto text-center"> middle並び-->
					<div class="ud-about-content-wrapper" style="padding-bottom: 3px;">
						<div class="ud-about-content">
							<span class="tag">採用情報</span>
							<h2>中途採用</h2>
						</div>
					</div>
					<div>
						※新卒採用当社では、現在定期的な新卒採用は行っておりません。<br>
						情報処理に関して基本的な知識をお持ちで、システム開発に興味がある方は窓口までご連絡ください。<br> <br>
					</div>
					<div>
						<table class="table table-hover ud-contact-form">
							<caption style="caption-side: top;">募集要項</caption>
							<tbody>
								<tr>
									<td colspan="2" class="" width="12%">職種</td>
									<td>システムエンジニア（プログラマー、インフラエンジニア、ネットワークエンジニア等）</td>
								</tr>
								<tr>
									<td colspan="2" class="">職務内容</td>
									<td>Java、.NETなどを使用したアプリケーション開発 C言語、C++言語を使用した基盤システム開発</td>
								</tr>
								<tr>
									<td colspan="2" class="">給与</td>
									<td>経験、能力を考慮して決定します。</td>
								</tr>
								<tr>
									<td colspan="2" class="">勤務時間</td>
									<td>フレックスタイム制（標準時間 9:00～18:00）</td>
								</tr>
								<tr>
									<td colspan="2" class="">休暇</td>
									<td>完全週休2日制、祝日、年末年始休暇、 年次有給休暇、慶弔休暇</td>
								</tr>
								<tr>
									<td colspan="2" class="">勤務地</td>
									<td>本社および顧客プロジェクト現場（東京都内及び近郊）</td>
								</tr>
								<tr>
									<td colspan="2" class="">社会保険</td>
									<td>健康保険、厚生年金保険、雇用保険、労災保険</td>
								</tr>
								<tr>
									<td colspan="2" class="">必要書類</td>
									<td>履歴書、職務経歴書</td>
								</tr>
								<tr>
									<td colspan="2" class="">福利厚生</td>
									<td>社内クラブ活動、社内貸付金制度、定期交通費全額支援、<br>
										年1回健康診断費用支援、資格試験合格時願書代支援
									</td>
								</tr>
								<tr>
									<td colspan="2" class="">選考方法</td>
									<td>書類審査の後、面接及び簡単な適正検査</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ====== Team End ====== -->

	<!-- ====== kyuwujin Start ====== -->
	<section id="kyuwujin" class="ud-contact">
		<div class="container" >
			<div class="row align-items-center">
				<div class="col-xl-13 col-lg-7" >
					<div class="ud-contact-content-wrapper" >
						<div class="ud-contact-title" >
							<h3>情報セキュリティ基本方針</h3>
							<br>
							<p>・株式会社BNSシステムは、第一にお客様はもとより、当社の製品に関わる全ての人々の満足を得ることを目標とし、信頼・安心される会社を目指します。

							<p>
								<br>
							<h3>行動指針</h3>
							<br>
							<p>
								・情報資産の機密性、完全性、可用性を確実に保護するために組織的、技術的に適切な対策を講じ、変化する情報技術や新たな脅威に対応します。<br>
								・全社員に情報セキュリティ教育の実施と方針の周知徹底をはかり、意識の高揚・維持に努めます。<br>
								・マネジメントシステム及び、情報セキュリティに関する目的を設定し、定期的にレビューし、継続的に改善を実施し、維持します。<br>
								・マネジメントシステムを実行・維持・改善して行くために管理責任者に責任と権限を委譲します。<a
									href="#writeInfo" style="margin: auto;">登録へ</a>
							</p>

						</div>
					</div>
				</div>
				<div class="col-xl-9 col-lg-8" >
					<div class="ud-contact-form-wrapper wow fadeInUp"
						data-wow-delay=".2s" id="writeInfo" style="width:70%;">
						<h3 class="ud-contact-form-title">求職者登録</h3>
						<form class="ud-contact-form wpcf7-form init"
							action="/KyushokuMailSender" method="post"
							novalidate="novalidate" data-status="init"
							enctype="multipart/form-data">
							<div>
								<div class="form-group ud-form-group wpcf7-form-control-wrap"
									data-name="yourJobs[]">
									<label for="FormControlSelect2">職種 (必須、複数選択可):</label> <select
										multiple class="form-control wpcf7-form-control wpcf7-select"
										aria-invalid="false" id="FormControlSelect2" name="yourJobs[]"
										style="width: 50%;">
								         <option value="システムエンジニア">システムエンジニア</option>
								         <option value="ネットワークエンジニア">ネットワークエンジニア</option>
								         <option value="データベースエンジニア">データベースエンジニア</option>
								         <option value="ヘルプデスク">ヘルプデスク</option>
								         <option value="CADオパレーター">CADオパレーター</option>
								         <option value="機械設計">機械設計</option>
								         <option value="電気･電子設計">電気･電子設計</option>
								         <option value="制御ソフト開発">制御ソフト開発</option>
								         <option value="CAE">CAE</option>
								         <option value="営業">営業</option>
								         <option value="Web開発">Web開発</option>
								         <option value="その他">その他</option>
									</select>
								</div>
								<br>
							</div>

							<div class="ud-form-group wpcf7-form-control-wrap">
								<label for="yourName">お名前 (必須):</label> <input type="text"
									name="yourName" />
							</div>

							<div class="ud-form-group wpcf7-form-control-wrap">
								<label for="yourKanaName">フリガナ (必須):</label> <input type="text"
									name="yourKanaName" />
							</div>
							<div class="ud-form-group wpcf7-form-control-wrap"
								style="width: 20%;">
								<label for="yourBirthday">生年月日 (必須):</label> <input type="date"
									name="yourBirthday" value=""
									class="wpcf7-form-control wpcf7-date wpcf7-validates-as-required wpcf7-validates-as-date"
									aria-required="true" aria-invalid="false" />
							</div>
							<div class="ud-form-group wpcf7-form-control-wrap">
								<label for="yourZip">郵便番号(必須):</label> <input type="text"
									name="yourZip" />
							</div>
							<div class="ud-form-group wpcf7-form-control-wrap">
								<label for="yourAddress">住所(必須):</label> <input type="text"
									name="yourAddress" />
							</div>
							<div class="ud-form-group wpcf7-form-control-wrap">
								<label for="yourPhone">連絡先TEL(必須):</label> <input type="tel"
									name="yourPhone" />
							</div>
							<div class="ud-form-group wpcf7-form-control-wrap">
								<label for="yourEmail">メール(必須):</label> <input type="email"
									name="yourEmail" />
							</div>
							<div class="form-group" style="width: 20%;">
								<label for="FormControlSelect1" style="font-size: 12px;">最終学歴:</label>
								<select
									class="form-select form-select-sm wpcf7-form-control-wrap"
									id="FormControlSelect1" name="yourGraduate"
									aria-invalid="false">
									<option selected>選択</option>
									<option value="高校卒">高校卒</option>
									<option value="専門学校卒">専門学校卒</option>
									<option value="大学卒">大学卒</option>
									<option value="大学院卒">大学院卒</option>
								</select>
							</div>
							<br>

							<div class="ud-form-group">
								<label for="yourGraduate">学歴補足:</label> <input type="text"
									name="yourGraduate2" />
							</div>

							<div class="ud-form-group">
								<label for="yourLicense">保有資格･免許:</label>
								<textarea name="yourLicense" rows="1"></textarea>
							</div>

							<div class="ud-form-group">
								<label for="yourSkill">職務経歴･スキル:</label>
								<textarea name="yourSkill" rows="1"></textarea>
							</div>

							<div class="mb-3 wpcf7-form-control-wrap" style="width: 60%;"
								data-name="yourSheetFile" aria-invalid="false">
								<label for="formFileSm" style="font-size: medium;">履歴書･スキル表:</label>
								<input type="file" name="yourSheetFile"
									class="form-control form-control-sm wpcf7-form-control wpcf7-file"
									id="formFileSm" accept=".xlsx,.xls,.pdf">
							</div>

							<div class="ud-form-group mb-1">
								<button type="submit"
									class="ud-main-btn wpcf7-form-control has-spinner wpcf7-submit">
									送信</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ====== kyuwujin End ====== -->

	<!-- ====== Access Start ====== -->
	<section id="access" class="ud-pricing">
		<div class="container">
			<div class="ud-contact-form-wrapper wow fadeInUp"
				data-wow-delay=".2s">
				<div class="ud-acess-content-wrapper">
					<div class="ud-access-content">
						<span class="tag">アクセス</span>
					</div>

					<div class="ud-pricing-body">
						<div id="i2">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3238.4258406147865!2d139.65326621550344!3d35.74033673433516!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018ed08d4b80a51%3A0x8aef6d10fdf63089!2s1-ch%C5%8Dme-34-14%20Nerima%2C%20Nerima%20City%2C%20Tokyo%20176-0001!5e0!3m2!1sko!2sjp!4v1633070911652!5m2!1sko!2sjp"
								style="border: 0;" ></iframe> <!-- allowfullscreen="" loading="lazy" -->
						</div>
						<div>
							<br> <br>

							<h5>・豊島園駅徒歩</h5>
							<div class="progress" style="height: 20px; width: 60%;">
								<div class="progress-bar" role="progressbar" style="width: 16%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="60">10分</div>
							</div>
							<br>

							<h5>・練馬駅徒歩</h5>
							<div class="progress" style="height: 20px; width: 60%;">
								<div class="progress-bar bg-info" role="progressbar"
									style="width: 5%;" aria-valuenow="25" aria-valuemin="0"
									aria-valuemax="60">3分</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ====== Access End ====== -->

	<!-- ====== Contact Start ====== -->
	<section id="contact" class="ud-contact">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-8 col-lg-7">
					<div class="ud-contact-content-wrapper">
						<div class="ud-contact-title">
							<h3>お問い合わせ</h3>
							<br>
							<p>
								弊社に興味をお持ちいただきありがとうございます。 <br>
								お問い合わせいただきました内容は、弊社の掲げる個人情報保護方針に沿って管理し、<br>
								お客様の同意なく第三者に開示・提供することはございません。<br>
								詳細につきましては、当サイトの「プライバシーポリシー」をご参照ください。
							</p>
						</div>
						<div class="ud-contact-info-wrapper">
							<div class="ud-single-info">
								<div class="ud-info-icon">
									<i class="lni lni-map-marker"></i>
								</div>
								<div class="ud-info-meta">
									<h5>アドレス</h5>
									<p>
										〒１７６－０００１<br> 東京都練馬区練馬 １ー３４－１４ <br>山章興産ビル ３０１号
									</p>
								</div>
							</div>
							<div class="ud-single-info">
								<div class="ud-info-icon">
									<i class="lni lni-envelope"></i>
								</div>
								<div class="ud-info-meta">
									<h5>連絡先</h5>
									<p>電話: 03-4283-9863</p>
									<p>E-Mail: info@bns-system.com</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-5">
					<div class="ud-contact-form-wrapper wow fadeInUp"
						data-wow-delay=".2s">
						<h3 class="ud-contact-form-title">メッセージ</h3>
						<form class="ud-contact-form wpcf7-form init" action="/MailSender"
							method="post" novalidate="novalidate" data-status="init">

							<div style="display: none;">
								<input type="hidden" name="_wpcf7" value="90" /> <input
									type="hidden" name="_wpcf7_version" value="5.6.2" /> <input
									type="hidden" name="_wpcf7_locale" value="ja" /> <input
									type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f90-p44-o1" />
								<input type="hidden" name="_wpcf7_container_post" value="44" />
								<input type="hidden" name="_wpcf7_posted_data_hash" value="" />
							</div>

							<div class="ud-form-group wpcf7-form-control-wrap"
								data-name="your-name">
								<label> 氏名<br /> <span class="wpcf7-form-control-wrap"
									data-name="fromName"><input type="text" name="fromName"
										value="" size="40"
										class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
										aria-required="true" aria-invalid="false" /></span></label>
							</div>

							<div class="ud-form-group">
								<label> メールアドレス<br /></label> <span
									class="wpcf7-form-control-wrap" data-name="fromEmail"><input
									type="email" name="fromEmail" value="" size="40"
									class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"
									aria-required="true" aria-invalid="false" /></span>
							</div>

							<div class="ud-form-group">
								<label> 題名<br /> <span class="wpcf7-form-control-wrap"
									data-name="subject"><input type="text" name="subject"
										value="" size="40"
										class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
										aria-required="true" aria-invalid="false" /></span></label>
							</div>

							<div class="ud-form-group">
								<label> メッセージ本文 (任意)<br /> <span
									class="wpcf7-form-control-wrap" data-name="detail"><textarea
											name="detail" cols="40" rows="10"
											class="wpcf7-form-control wpcf7-textarea"
											aria-invalid="false"></textarea></span></label>
							</div>

							<div
								class="ud-form-group wpcf7-form-control-wrap has-spinner wpcf7-submit">
								<button type="submit" class="ud-main-btn">送信</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ====== Contact End ====== -->

	<!-- ====== Footer Start ====== -->
	<footer class="ud-footer wow fadeInUp" data-wow-delay=".15s">
		<div class="shape shape-1">
			<img src="assets/images/footer/shape-1.svg" alt="shape" />
		</div>
		<div class="shape shape-2">
			<img src="assets/images/footer/shape-2.svg" alt="shape" />
		</div>
		<div class="shape shape-3">
			<img src="assets/images/footer/shape-3.svg" alt="shape" />
		</div>
		<div style="margin-bottom: 5%;">
			<div style="float: left; margin-left: 15%;">
				<a href="#home" class="ud-footer-logo"> <img
					src="assets/images/logo/logo.svg" alt="logo" />
				</a>
			</div>
			<div>
				<h5 style="color: aliceblue; margin-left: 40%;">
					BNS SYSTEM <br> 〒176-0001 東京都練馬区練馬 1-34-14 山章興産ビル 301号<br>
					E-Mail: info@bns-system.com<br> TEL: 03-4283-9863
				</h5>
			</div>
		</div>
	</footer>
	<!-- ====== Footer End ====== -->

	<!-- ====== Back To Top Start ====== -->
	<a href="javascript:void(0)" class="back-to-top"> <i
		class="lni lni-chevron-up"> </i>
	</a>
	<!-- ====== Back To Top End ====== -->

	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/main.js"></script>
	<script>
      const pageLink = document.querySelectorAll(".ud-menu-scroll");

      pageLink.forEach((elem) => {
        elem.addEventListener("click", (e) => {
          e.preventDefault();
          document.querySelector(elem.getAttribute("href")).scrollIntoView({
            behavior: "smooth",
            offsetTop: 1 - 60,
          });
        });
      });

      function onScroll(event) {
        const sections = document.querySelectorAll(".ud-menu-scroll");
        const scrollPos =
          window.pageYOffset ||
          document.documentElement.scrollTop ||
          document.body.scrollTop;

        for (let i = 0; i < sections.length; i++) {
          const currLink = sections[i];
          const val = currLink.getAttribute("href");
          const refElement = document.querySelector(val);
          const scrollTopMinus = scrollPos + 73;
          if (
            refElement.offsetTop <= scrollTopMinus &&
            refElement.offsetTop + refElement.offsetHeight > scrollTopMinus
          ) {
            document
              .querySelector(".ud-menu-scroll")
              .classList.remove("active");
            currLink.classList.add("active");
          } else {
            currLink.classList.remove("active");
          }
        }
      }

      window.document.addEventListener("scroll", onScroll);
    </script>

	<script>
var el;
document.addEventListener('DOMContentLoaded', function() {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/BoardController');
    xhr.responseType = 'json';
    xhr.onload = function() {
        if (xhr.status === 200) {
            var data = xhr.response;
            console.log(data);

            var array = data.newsList;
            var html = '<tbody class="text-center" id="newsTbody">';
            for (var i = 0; i < array.length; i++) {
            	el = array[i];
                html += '<tr>';
                html += '<td><img src="assets/images/new/icons8-cm1.png" alt="table-cm-icon" /></td>'
                html += '<td class="text-left" width="50%">';
                html += '<div class="panel-news-container">';
                html += '<p class="panel-news-title">'+ el.title +'</p>';
                html += '<div class="panel-news-answer">';
                html += '<p>' +el.detail+ '</p>';
                html += '</div>';
                html += '</div>';
                html += '</td>';
                html += '<td>' + el.date + '</td>';
                html += '</tr>';
            }
            if(el.totalCount > 7){
            	var nextBtn = document.getElementById('nextBtn');
            	nextBtn.classList.remove('hidden');
            }

            html += '</tbody>';
            var newsTbody = document.getElementById('newsTbody');



            newsTbody.innerHTML = html;
            boardAction();

        } else {
            alert('게시판 데이터를 가져오는 동안 오류가 발생했습니다.');
        }
    };
    xhr.send();

});


</script>

	<script>
function boardAction(){
	  let panelFaqContainer = document.querySelectorAll(".panel-news-container");

	  let panelFaqAnswer = document.querySelectorAll(".panel-news-answer");

	  for( let j=0; j < panelFaqContainer.length; j++ ) {
	    panelFaqContainer[j].addEventListener('click', function() {
	      panelFaqAnswer[j].classList.toggle('active2');
	    });
	  };
}
</script>

	<script>
  		var currentPage = 1;
		function nextPage(){
		var totalData = el.totalCount;
		var dataPerPage = 7;
		var totalPage = Math.ceil(totalData / dataPerPage);

		currentPage += 1;

		var startNum = 0+(currentPage - 1) * 7;
		if(totalPage <= currentPage){
		 	nextBtn.classList.add('hidden');
		}
		if(currentPage > 1){
			prevBtn.classList.remove('hidden');
		}

		var xhr = new XMLHttpRequest();
		var url = "/BoardController?startNum=" + encodeURIComponent(startNum);
	    xhr.open('GET', url);
	    xhr.responseType = 'json';
	    xhr.onload = function() {
	        if (xhr.status === 200) {
	            var data = xhr.response;
	            var array = data.newsList;
	            var html = '<tbody class="text-center" id="newsTbody">';
	            for (var i = 0; i < array.length; i++) {
	                var el = array[i];
	                html += '<tr>';
	                html += '<td><img src="assets/images/new/icons8-cm1.png" alt="table-cm-icon" /></td>'
	                html += '<td class="text-left" width="50%">';
	                html += '<div class="panel-news-container">';
	                html += '<p class="panel-news-title">'+ el.title +'</p>';
	                html += '<div class="panel-news-answer">';
	                html += '<p>' +el.detail+ '</p>';
	                html += '</div>';
	                html += '</div>';
	                html += '</td>';
	                html += '<td>' + el.date + '</td>';
	                html += '</tr>';
	            }
	            html += '</tbody>';
	            var newsTbody = document.getElementById('newsTbody');
	            newsTbody.innerHTML = html;
	        } else {
	            alert('게시판 데이터를 가져오는 동안 오류가 발생했습니다.');
	        }
	        boardAction();
	    };

	    xhr.send();
	}
	var nextBtn = document.getElementById('nextBtn');
	nextBtn.addEventListener('click', nextPage);

</script>

<script>
	var currentPage = 1;
	function prevPage(){
	var totalData = el.totalCount;
	var dataPerPage = 7;
	var totalPage = Math.ceil(totalData / dataPerPage);

	currentPage -= 1;

	var startNum = 0 + (currentPage - 1) * 7;



	if(totalPage <= currentPage){
	   nextBtn.classList.add('hidden');
	} else if(currentPage > 1){
		prevBtn.classList.remove('hidden');
	} else if(currentPage == 1){
		prevBtn.classList.add('hidden');
	}
	if(currentPage < totalPage ){
		nextBtn.classList.remove('hidden');
	}

	var xhr = new XMLHttpRequest();
	var url = "/BoardController?startNum=" + encodeURIComponent(startNum);
    xhr.open('GET', url);
    xhr.responseType = 'json';
    xhr.onload = function() {
        if (xhr.status === 200) {
            var data = xhr.response;
            console.log(data);

            var array = data.newsList;
            var html = '<tbody class="text-center" id="newsTbody">';
            for (var i = 0; i < array.length; i++) {
                var el = array[i];
                html += '<tr>';
                html += '<td><img src="assets/images/new/icons8-cm1.png" alt="table-cm-icon" /></td>'
                html += '<td class="text-left" width="50%">';
                html += '<div class="panel-news-container">';
                html += '<p class="panel-news-title">'+ el.title +'</p>';
                html += '<div class="panel-news-answer">';
                html += '<p>' +el.detail+ '</p>';
                html += '</div>';
                html += '</div>';
                html += '</td>';
                html += '<td>' + el.date + '</td>';
                html += '</tr>';
            }
            html += '</tbody>';
            var newsTbody = document.getElementById('newsTbody');
            newsTbody.innerHTML = html;
        } else {
            alert('게시판 데이터를 가져오는 동안 오류가 발생했습니다.');
        }
        boardAction();
    };
    xhr.send();

	}
	var prevBtn = document.getElementById('prevBtn');
	prevBtn.addEventListener('click', prevPage);
</script>

</body>
</html>