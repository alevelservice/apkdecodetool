.class public Lcom/example/native_webview/c;
.super Landroidx/fragment/app/b;
.source "LoadingDialog.java"


# instance fields
.field private p:Lcom/example/native_webview/j/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    return-void
.end method

.method public static i()Lcom/example/native_webview/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/example/native_webview/c;

    invoke-direct {v0}, Lcom/example/native_webview/c;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/b;->a(II)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/b;->a(Z)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p3, Lcom/example/native_webview/h;->dialog_loading:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/g;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/example/native_webview/j/c;

    iput-object p1, p0, Lcom/example/native_webview/c;->p:Lcom/example/native_webview/j/c;

    .line 2
    iget-object p1, p0, Lcom/example/native_webview/c;->p:Lcom/example/native_webview/j/c;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string p2, "res"

    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget p2, Lcom/example/native_webview/f;->gif_loading:I

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-static {}, Le/f/f/b/a/c;->a()Le/f/f/b/a/e;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Le/f/f/b/a/e;->a(Landroid/net/Uri;)Le/f/f/b/a/e;

    move-result-object p1

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Le/f/f/d/b;->a(Z)Le/f/f/d/b;

    check-cast p1, Le/f/f/b/a/e;

    .line 9
    invoke-virtual {p1}, Le/f/f/d/b;->a()Le/f/f/d/a;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/example/native_webview/c;->p:Lcom/example/native_webview/j/c;

    iget-object p2, p2, Lcom/example/native_webview/j/c;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Le/f/f/i/a;)V

    return-void
.end method
