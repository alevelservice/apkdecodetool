.class Landroidx/core/view/e0$e;
.super Landroidx/core/view/e0$i;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field final b:Landroid/view/WindowInsets;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:La/i/h/b;


# direct methods
.method constructor <init>(Landroidx/core/view/e0;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1    # Landroidx/core/view/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/e0$i;-><init>(Landroidx/core/view/e0;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/e0$e;->c:La/i/h/b;

    .line 3
    iput-object p2, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/e0;Landroidx/core/view/e0$e;)V
    .locals 1
    .param p1    # Landroidx/core/view/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/e0$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/e0$e;-><init>(Landroidx/core/view/e0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method a(IIII)Landroidx/core/view/e0;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/view/e0$a;

    iget-object v1, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsets;)Landroidx/core/view/e0;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/e0$a;-><init>(Landroidx/core/view/e0;)V

    .line 2
    invoke-virtual {p0}, Landroidx/core/view/e0$e;->f()La/i/h/b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/e0;->a(La/i/h/b;IIII)La/i/h/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/e0$a;->b(La/i/h/b;)Landroidx/core/view/e0$a;

    .line 3
    invoke-virtual {p0}, Landroidx/core/view/e0$i;->e()La/i/h/b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/e0;->a(La/i/h/b;IIII)La/i/h/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/e0$a;->a(La/i/h/b;)Landroidx/core/view/e0$a;

    .line 4
    invoke-virtual {v0}, Landroidx/core/view/e0$a;->a()Landroidx/core/view/e0;

    move-result-object p1

    return-object p1
.end method

.method final f()La/i/h/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$e;->c:La/i/h/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, La/i/h/b;->a(IIII)La/i/h/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/e0$e;->c:La/i/h/b;

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/core/view/e0$e;->c:La/i/h/b;

    return-object v0
.end method

.method h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
