.class public Lcom/facebook/drawee/backends/pipeline/info/i/a;
.super Le/f/f/d/c;
.source "ImagePerfControllerListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/f/d/c<",
        "Le/f/i/g/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/common/time/b;

.field private final c:Lcom/facebook/drawee/backends/pipeline/info/h;

.field private final d:Lcom/facebook/drawee/backends/pipeline/info/g;


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/b;Lcom/facebook/drawee/backends/pipeline/info/h;Lcom/facebook/drawee/backends/pipeline/info/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/f/d/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->b:Lcom/facebook/common/time/b;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    .line 4
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->d:Lcom/facebook/drawee/backends/pipeline/info/g;

    return-void
.end method

.method private b(J)V
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->b(Z)V

    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->h(J)V

    .line 9
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->d:Lcom/facebook/drawee/backends/pipeline/info/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/info/g;->a(Lcom/facebook/drawee/backends/pipeline/info/h;I)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->b(Z)V

    .line 27
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->i(J)V

    .line 28
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->d:Lcom/facebook/drawee/backends/pipeline/info/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p2, v1}, Lcom/facebook/drawee/backends/pipeline/info/g;->a(Lcom/facebook/drawee/backends/pipeline/info/h;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 19
    invoke-super {p0, p1}, Le/f/f/d/c;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->b:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v2}, Lcom/facebook/drawee/backends/pipeline/info/h;->a()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 22
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(J)V

    .line 23
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->d:Lcom/facebook/drawee/backends/pipeline/info/g;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/facebook/drawee/backends/pipeline/info/g;->b(Lcom/facebook/drawee/backends/pipeline/info/h;I)V

    .line 25
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/i/a;->b(J)V

    return-void
.end method

.method public a(Ljava/lang/String;Le/f/i/g/f;)V
    .locals 3
    .param p2    # Le/f/i/g/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->b:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->d(J)V

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Le/f/i/g/f;)V

    .line 7
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->d:Lcom/facebook/drawee/backends/pipeline/info/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/info/g;->b(Lcom/facebook/drawee/backends/pipeline/info/h;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Le/f/i/g/f;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Le/f/i/g/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->b:Lcom/facebook/common/time/b;

    invoke-interface {p3}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 9
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p3, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->c(J)V

    .line 10
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p3, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->f(J)V

    .line 11
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p3, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Le/f/i/g/f;)V

    .line 13
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->d:Lcom/facebook/drawee/backends/pipeline/info/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/g;->b(Lcom/facebook/drawee/backends/pipeline/info/h;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    check-cast p2, Le/f/i/g/f;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/i/a;->a(Ljava/lang/String;Le/f/i/g/f;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p2, Le/f/i/g/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/i/a;->a(Ljava/lang/String;Le/f/i/g/f;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 14
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->b:Lcom/facebook/common/time/b;

    invoke-interface {p2}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 15
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->b(J)V

    .line 16
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->d:Lcom/facebook/drawee/backends/pipeline/info/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 v2, 0x5

    invoke-virtual {p1, p2, v2}, Lcom/facebook/drawee/backends/pipeline/info/g;->b(Lcom/facebook/drawee/backends/pipeline/info/h;I)V

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/i/a;->b(J)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->b:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->e(J)V

    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->d:Lcom/facebook/drawee/backends/pipeline/info/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/a;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/facebook/drawee/backends/pipeline/info/g;->b(Lcom/facebook/drawee/backends/pipeline/info/h;I)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/i/a;->a(J)V

    return-void
.end method
