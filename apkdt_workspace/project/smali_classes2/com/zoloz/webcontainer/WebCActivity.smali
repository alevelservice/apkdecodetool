.class public Lcom/zoloz/webcontainer/WebCActivity;
.super Landroid/app/Activity;
.source "WebCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zoloz/webcontainer/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoloz/webcontainer/WebCActivity$a;
    }
.end annotation


# instance fields
.field private e:Landroid/webkit/WebView;

.field private f:Ljava/lang/String;

.field private g:Lcom/zoloz/webcontainer/r/b;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/q;->c()Lcom/zoloz/webcontainer/l/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-virtual {v0, v1, v2}, Lcom/zoloz/webcontainer/l/e;->a(Ljava/lang/String;Lcom/zoloz/webcontainer/r/a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/q;->d()Lcom/zoloz/webcontainer/l/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-virtual {v0, v1, v2}, Lcom/zoloz/webcontainer/l/c;->a(Ljava/lang/String;Lcom/zoloz/webcontainer/r/a;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 5
    :try_start_0
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/q;->h()Lcom/zoloz/webcontainer/c/b;

    move-result-object v0

    .line 6
    iget v1, v0, Lcom/zoloz/webcontainer/c/b;->b:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->h:Landroid/widget/TextView;

    iget v2, v0, Lcom/zoloz/webcontainer/c/b;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    sget v1, Lcom/zoloz/webcontainer/e;->e:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 9
    iget-object v1, v0, Lcom/zoloz/webcontainer/c/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 10
    iget-object v0, v0, Lcom/zoloz/webcontainer/c/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 11
    :cond_0
    iget v1, v0, Lcom/zoloz/webcontainer/c/b;->c:I

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, v0, Lcom/zoloz/webcontainer/c/b;->c:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WebCActivity"

    .line 13
    invoke-static {v0, p1}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/zoloz/webcontainer/WebCActivity;)Lcom/zoloz/webcontainer/r/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 1
    sget v0, Lcom/zoloz/webcontainer/e;->g:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/zoloz/webcontainer/e;->e:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v1, Lcom/zoloz/webcontainer/e;->f:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget v1, Lcom/zoloz/webcontainer/e;->h:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->h:Landroid/widget/TextView;

    .line 5
    sget v1, Lcom/zoloz/webcontainer/e;->b:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->k:Landroid/widget/TextView;

    .line 6
    sget v1, Lcom/zoloz/webcontainer/e;->a:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->l:Landroid/widget/TextView;

    .line 7
    invoke-direct {p0, v0}, Lcom/zoloz/webcontainer/WebCActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->j:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 6

    .line 1
    sget v0, Lcom/zoloz/webcontainer/e;->i:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "h5_title_back_show"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "no"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/zoloz/webcontainer/e;->e:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "h5_show_title_bar"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget v0, Lcom/zoloz/webcontainer/e;->g:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/zoloz/webcontainer/WebCActivity;->e()V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/16 v2, 0x13

    if-lt v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    .line 12
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    .line 16
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 18
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "WebCActivity"

    const-string v5, "Ignore the exception in AccessibilityInjector when init"

    .line 19
    invoke-static {v4, v5}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    const/16 v3, 0x10

    .line 21
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 23
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/appcache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 29
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 30
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoloz/webcontainer/q;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 31
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 32
    :cond_3
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 35
    invoke-static {}, Lcom/zoloz/webcontainer/p/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 37
    :cond_4
    new-instance v0, Lcom/zoloz/webcontainer/r/b;

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/zoloz/webcontainer/r/b;-><init>(Lcom/zoloz/webcontainer/WebCActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    .line 38
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/r/b;->b(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-virtual {v0, p0}, Lcom/zoloz/webcontainer/r/b;->a(Lcom/zoloz/webcontainer/d;)V

    .line 40
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/zoloz/webcontainer/WebCActivity$a;

    iget-object v2, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-direct {v1, p0, v2}, Lcom/zoloz/webcontainer/WebCActivity$a;-><init>(Lcom/zoloz/webcontainer/WebCActivity;Lcom/zoloz/webcontainer/r/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 41
    invoke-direct {p0}, Lcom/zoloz/webcontainer/WebCActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoloz/webcontainer/q;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoloz/webcontainer/q;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 8
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 11
    :goto_0
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 12
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  AliApp(AP/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Language/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AlipayClient/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "setUserAgent exception"

    .line 14
    invoke-static {v1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/q;->e()Lcom/zoloz/webcontainer/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "WebCActivity"

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load url from cache "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/q;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 5
    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 6
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult scan result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebCActivity"

    invoke-static {v1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1

    if-nez p3, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "scanResult"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    const-string v0, "code"

    .line 4
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    :goto_0
    new-instance p2, Lcom/zoloz/webcontainer/j/c;

    invoke-direct {p2, p1}, Lcom/zoloz/webcontainer/j/c;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Le/a/a/a/m;->a()Le/a/a/a/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Le/a/a/a/k;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onBackChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget p1, Lcom/zoloz/webcontainer/e;->e:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcom/zoloz/webcontainer/e;->e:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/zoloz/webcontainer/r/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/zoloz/webcontainer/e;->f:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/zoloz/webcontainer/e;->e:I

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/zoloz/webcontainer/WebCActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Lcom/alibaba/taffy/core/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WebCActivity"

    const-string v0, "onCreate url "

    .line 2
    invoke-static {p1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget p1, Lcom/zoloz/webcontainer/f;->a:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 5
    invoke-direct {p0}, Lcom/zoloz/webcontainer/WebCActivity;->b()V

    .line 6
    invoke-direct {p0}, Lcom/zoloz/webcontainer/WebCActivity;->c()V

    .line 7
    invoke-direct {p0}, Lcom/zoloz/webcontainer/WebCActivity;->d()V

    .line 8
    invoke-direct {p0}, Lcom/zoloz/webcontainer/WebCActivity;->a()V

    .line 9
    iget-object p1, p0, Lcom/zoloz/webcontainer/WebCActivity;->j:Ljava/lang/String;

    const-string v0, "landscape"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/zoloz/webcontainer/WebCActivity;->j:Ljava/lang/String;

    const-string v0, "auto"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 14
    :goto_0
    invoke-static {}, Le/a/a/a/m;->a()Le/a/a/a/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Le/a/a/a/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/q;->c()Lcom/zoloz/webcontainer/l/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-virtual {v0, v1, v2}, Lcom/zoloz/webcontainer/l/e;->b(Ljava/lang/String;Lcom/zoloz/webcontainer/r/a;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/q;->d()Lcom/zoloz/webcontainer/l/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/webcontainer/WebCActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/c;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/r/b;->h()V

    .line 7
    invoke-static {}, Le/a/a/a/m;->a()Le/a/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/a/a/a/k;->b(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->e:Landroid/webkit/WebView;

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause configuration locale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebCActivity"

    invoke-static {v1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lcom/zoloz/webcontainer/j/d;

    invoke-direct {p1}, Lcom/zoloz/webcontainer/j/d;-><init>()V

    .line 2
    invoke-static {}, Le/a/a/a/m;->a()Le/a/a/a/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Le/a/a/a/k;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/r/b;->j()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/r/b;->c()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->g:Lcom/zoloz/webcontainer/r/b;

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/r/b;->c()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onTitleBarRenderEvent(Lcom/zoloz/webcontainer/j/e;)V
    .locals 2
    .annotation runtime Lcom/alibaba/taffy/bus/annotation/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/zoloz/webcontainer/j/e;->a:Lcom/zoloz/webcontainer/j/a;

    sget-object v1, Lcom/zoloz/webcontainer/j/a;->BTN_LEFT:Lcom/zoloz/webcontainer/j/a;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->l:Landroid/widget/TextView;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->k:Landroid/widget/TextView;

    :goto_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v1, p1, Lcom/zoloz/webcontainer/j/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p1, Lcom/zoloz/webcontainer/j/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p1, Lcom/zoloz/webcontainer/j/e;->a:Lcom/zoloz/webcontainer/j/a;

    .line 8
    new-instance v1, Lcom/zoloz/webcontainer/o;

    invoke-direct {v1, p0, p1}, Lcom/zoloz/webcontainer/o;-><init>(Lcom/zoloz/webcontainer/WebCActivity;Lcom/zoloz/webcontainer/j/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTitleChange(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/WebCActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public recreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
