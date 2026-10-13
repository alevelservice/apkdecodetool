.class public Lcom/example/native_webview/WebViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebViewActivity.java"


# static fields
.field public static BROADCAST_ACTION:Ljava/lang/String; = "com.intercept.nativeview.maintainSession"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "extra_access_token"

.field public static final EXTRA_APP_VERSION:Ljava/lang/String; = "extra_app_version"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "extra_error_message"

.field public static final EXTRA_FULL_SCREEN_WEB_VIEW:Ljava/lang/String; = "extra_full_screen_web_view"

.field public static final EXTRA_FULL_URL:Ljava/lang/String; = "extra_full_url"

.field public static final EXTRA_PAGE_TITLE:Ljava/lang/String; = "extra_title"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "success"

.field public static final EXTRA_ROOT_URL:Ljava/lang/String; = "extra_root_url"


# instance fields
.field private g:Lcom/example/native_webview/j/a;

.field private h:Lcom/example/native_webview/j/i;

.field private i:Lcom/example/native_webview/a;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "extra_full_url"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/native_webview/WebViewActivity;->j:Ljava/lang/String;

    const-string v0, "extra_root_url"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/example/native_webview/WebViewActivity;->k:Ljava/util/List;

    const-string v0, "extra_title"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/native_webview/WebViewActivity;->m:Ljava/lang/String;

    const-string v0, "extra_access_token"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/native_webview/WebViewActivity;->l:Ljava/lang/String;

    const-string v0, "extra_error_message"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/native_webview/WebViewActivity;->n:Ljava/lang/String;

    const-string v0, "extra_full_screen_web_view"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/example/native_webview/WebViewActivity;->o:Ljava/lang/Boolean;

    const-string v0, "extra_app_version"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/native_webview/WebViewActivity;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDialogFragment(Landroidx/fragment/app/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/j;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/j;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/j;->b()I

    return-void
.end method

.method public addFragment(ILandroidx/fragment/app/Fragment;Z)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/g;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3, v2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    .line 5
    new-instance v3, Landroid/transition/Fade;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 6
    invoke-virtual {v0, p3, v2}, Landroidx/fragment/app/g;->a(Ljava/lang/String;I)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/j;

    move-result-object p3

    .line 8
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Landroidx/fragment/app/j;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/j;

    .line 9
    invoke-virtual {p3}, Landroidx/fragment/app/j;->b()I

    return-void
.end method

.method public getBinding()Lcom/example/native_webview/j/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->g:Lcom/example/native_webview/j/a;

    return-object v0
.end method

.method public hideBackButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->h:Lcom/example/native_webview/j/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/example/native_webview/j/i;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->i:Lcom/example/native_webview/a;

    invoke-virtual {v0}, Lcom/example/native_webview/a;->l()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/example/native_webview/WebViewActivity;->sendBroadcast()V

    .line 3
    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->i:Lcom/example/native_webview/a;

    invoke-virtual {v0}, Lcom/example/native_webview/a;->l()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/example/native_webview/WebViewActivity;->a(Landroid/os/Bundle;)V

    .line 3
    sget p1, Lcom/example/native_webview/h;->activity_web_view:I

    invoke-static {p0, p1}, Landroidx/databinding/g;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/example/native_webview/j/a;

    iput-object p1, p0, Lcom/example/native_webview/WebViewActivity;->g:Lcom/example/native_webview/j/a;

    .line 4
    iget-object p1, p0, Lcom/example/native_webview/WebViewActivity;->g:Lcom/example/native_webview/j/a;

    iget-object p1, p1, Lcom/example/native_webview/j/a;->v:Lcom/example/native_webview/j/i;

    iput-object p1, p0, Lcom/example/native_webview/WebViewActivity;->h:Lcom/example/native_webview/j/i;

    .line 5
    invoke-static {p0}, Le/f/f/b/a/c;->a(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/example/native_webview/WebViewActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/native_webview/WebViewActivity;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/native_webview/WebViewActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/example/native_webview/WebViewActivity;->k:Ljava/util/List;

    iget-object v5, p0, Lcom/example/native_webview/WebViewActivity;->o:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/example/native_webview/WebViewActivity;->p:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/example/native_webview/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/example/native_webview/a;

    move-result-object p1

    iput-object p1, p0, Lcom/example/native_webview/WebViewActivity;->i:Lcom/example/native_webview/a;

    .line 7
    iget-object p1, p0, Lcom/example/native_webview/WebViewActivity;->g:Lcom/example/native_webview/j/a;

    iget-object p1, p1, Lcom/example/native_webview/j/a;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->i:Lcom/example/native_webview/a;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/example/native_webview/WebViewActivity;->addFragment(ILandroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->h:Lcom/example/native_webview/j/i;

    iget-object v0, v0, Lcom/example/native_webview/j/i;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/native_webview/WebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->h:Lcom/example/native_webview/j/i;

    iget-object v0, v0, Lcom/example/native_webview/j/i;->v:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/example/native_webview/f;->ic_arrow_back:I

    invoke-static {v1, v2}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/example/native_webview/WebViewActivity;->h:Lcom/example/native_webview/j/i;

    iget-object v0, v0, Lcom/example/native_webview/j/i;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/example/native_webview/WebViewActivity$a;

    invoke-direct {v1, p0}, Lcom/example/native_webview/WebViewActivity$a;-><init>(Lcom/example/native_webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public sendBroadcast()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    sget-object v1, Lcom/example/native_webview/WebViewActivity;->BROADCAST_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
