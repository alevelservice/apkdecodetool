.class public Lcom/zoloz/webcontainer/r/b;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Lcom/zoloz/webcontainer/r/a;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/zoloz/webcontainer/a/c;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/zoloz/webcontainer/d;


# direct methods
.method public constructor <init>(Lcom/zoloz/webcontainer/WebCActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/zoloz/webcontainer/r/b;->e:I

    .line 3
    iput-object p1, p0, Lcom/zoloz/webcontainer/r/b;->a:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/zoloz/webcontainer/r/b;->b:Landroid/webkit/WebView;

    .line 5
    iput-object p3, p0, Lcom/zoloz/webcontainer/r/b;->d:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/zoloz/webcontainer/r/b;->k()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zoloz/webcontainer/a/a/b;

    invoke-direct {v0}, Lcom/zoloz/webcontainer/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/zoloz/webcontainer/r/b;->c:Lcom/zoloz/webcontainer/a/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/zoloz/webcontainer/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->c:Lcom/zoloz/webcontainer/a/c;

    return-object v0
.end method

.method public a(Lcom/zoloz/webcontainer/d;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/zoloz/webcontainer/r/b;->g:Lcom/zoloz/webcontainer/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->g:Lcom/zoloz/webcontainer/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/zoloz/webcontainer/d;->onTitleChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/zoloz/webcontainer/r/b;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/zoloz/webcontainer/r/b;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->g:Lcom/zoloz/webcontainer/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/zoloz/webcontainer/d;->onBackChange(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->c:Lcom/zoloz/webcontainer/a/c;

    invoke-interface {v0}, Lcom/zoloz/webcontainer/a/c;->a()V

    return-void
.end method

.method public i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/zoloz/webcontainer/r/b;->e:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/zoloz/webcontainer/r/b;->e:I

    .line 3
    iget v0, p0, Lcom/zoloz/webcontainer/r/b;->e:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/zoloz/webcontainer/r/b;->c:Lcom/zoloz/webcontainer/a/c;

    invoke-interface {v0, p0}, Lcom/zoloz/webcontainer/a/c;->a(Lcom/zoloz/webcontainer/r/a;)V

    return v2
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/q;->g()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/zoloz/webcontainer/m;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/zoloz/webcontainer/r/b;->c:Lcom/zoloz/webcontainer/a/c;

    invoke-interface {v1, p0, v0}, Lcom/zoloz/webcontainer/a/c;->a(Lcom/zoloz/webcontainer/r/a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
