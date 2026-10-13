.class public Lcom/zoloz/webcontainer/q;
.super Ljava/lang/Object;
.source "WebContainerKit.java"


# static fields
.field private static j:Lcom/zoloz/webcontainer/q;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zoloz/webcontainer/l/d;

.field private c:Z

.field private d:Lcom/zoloz/webcontainer/l/e;

.field private e:Lcom/zoloz/webcontainer/l/c;

.field private f:Lcom/zoloz/webcontainer/l/a;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/HashMap;

.field private i:Lcom/zoloz/webcontainer/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zoloz/webcontainer/q;

    invoke-direct {v0}, Lcom/zoloz/webcontainer/q;-><init>()V

    sput-object v0, Lcom/zoloz/webcontainer/q;->j:Lcom/zoloz/webcontainer/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/zoloz/webcontainer/l/e;

    invoke-direct {v0}, Lcom/zoloz/webcontainer/l/e;-><init>()V

    iput-object v0, p0, Lcom/zoloz/webcontainer/q;->d:Lcom/zoloz/webcontainer/l/e;

    .line 3
    new-instance v0, Lcom/zoloz/webcontainer/l/c;

    invoke-direct {v0}, Lcom/zoloz/webcontainer/l/c;-><init>()V

    iput-object v0, p0, Lcom/zoloz/webcontainer/q;->e:Lcom/zoloz/webcontainer/l/c;

    .line 4
    new-instance v0, Lcom/zoloz/webcontainer/l/a;

    invoke-direct {v0}, Lcom/zoloz/webcontainer/l/a;-><init>()V

    iput-object v0, p0, Lcom/zoloz/webcontainer/q;->f:Lcom/zoloz/webcontainer/l/a;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zoloz/webcontainer/q;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static i()Lcom/zoloz/webcontainer/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/zoloz/webcontainer/q;->j:Lcom/zoloz/webcontainer/q;

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/zoloz/webcontainer/l/d;->a()Lcom/zoloz/webcontainer/l/d;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    new-instance v1, Lcom/zoloz/webcontainer/n/a/b;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/n/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    .line 3
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    new-instance v1, Lcom/zoloz/webcontainer/n/a/e;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/n/a/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    new-instance v1, Lcom/zoloz/webcontainer/n/c;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/n/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    .line 5
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    new-instance v1, Lcom/zoloz/webcontainer/n/a/d;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/n/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    .line 6
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    new-instance v1, Lcom/zoloz/webcontainer/n/a/f;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/n/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    .line 7
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    new-instance v1, Lcom/zoloz/webcontainer/n/a/a;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/n/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    .line 8
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    new-instance v1, Lcom/zoloz/webcontainer/n/a/g;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/n/a/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/l/d;->a(Lcom/zoloz/webcontainer/n/d;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/zoloz/webcontainer/l/d;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->b:Lcom/zoloz/webcontainer/l/d;

    return-object v0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/zoloz/webcontainer/q;->a:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Lcom/zoloz/webcontainer/q;->j()V

    .line 3
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-virtual {v0, p2}, Lcom/zoloz/webcontainer/l/a;->a(I)V

    .line 4
    iget-object p2, p0, Lcom/zoloz/webcontainer/q;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-virtual {p2, p1}, Lcom/zoloz/webcontainer/l/a;->a(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/zoloz/webcontainer/i/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/zoloz/webcontainer/q;->a:Landroid/content/Context;

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebContainerKit"

    invoke-static {v1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zoloz/webcontainer/WebCActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 10
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 12
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->d:Lcom/zoloz/webcontainer/l/e;

    invoke-virtual {v0, p1}, Lcom/zoloz/webcontainer/l/e;->b(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/zoloz/webcontainer/q;->e:Lcom/zoloz/webcontainer/l/c;

    invoke-virtual {p1}, Lcom/zoloz/webcontainer/l/c;->a()V

    .line 24
    iget-object p1, p0, Lcom/zoloz/webcontainer/q;->f:Lcom/zoloz/webcontainer/l/a;

    invoke-virtual {p1}, Lcom/zoloz/webcontainer/l/a;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->a:Landroid/content/Context;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebContainerKit"

    invoke-static {v2, v1}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zoloz/webcontainer/WebCActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "url"

    .line 16
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 17
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/zoloz/webcontainer/q;->c:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->e:Lcom/zoloz/webcontainer/l/c;

    invoke-virtual {v0, p1}, Lcom/zoloz/webcontainer/l/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/zoloz/webcontainer/q;->c:Z

    return v0
.end method

.method public c()Lcom/zoloz/webcontainer/l/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->d:Lcom/zoloz/webcontainer/l/e;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->e:Lcom/zoloz/webcontainer/l/c;

    invoke-virtual {v0, p1}, Lcom/zoloz/webcontainer/l/c;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()Lcom/zoloz/webcontainer/l/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->e:Lcom/zoloz/webcontainer/l/c;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->d:Lcom/zoloz/webcontainer/l/e;

    invoke-virtual {v0, p1}, Lcom/zoloz/webcontainer/l/e;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/zoloz/webcontainer/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()Lcom/zoloz/webcontainer/l/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->f:Lcom/zoloz/webcontainer/l/a;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/zoloz/webcontainer/q;->g:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/HashMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method public h()Lcom/zoloz/webcontainer/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/q;->i:Lcom/zoloz/webcontainer/c/b;

    return-object v0
.end method
