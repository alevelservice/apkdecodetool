.class Landroidx/core/view/e0$f;
.super Landroidx/core/view/e0$e;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private d:La/i/h/b;


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
    invoke-direct {p0, p1, p2}, Landroidx/core/view/e0$e;-><init>(Landroidx/core/view/e0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/e0$f;->d:La/i/h/b;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/e0;Landroidx/core/view/e0$f;)V
    .locals 0
    .param p1    # Landroidx/core/view/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/e0$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/core/view/e0$e;-><init>(Landroidx/core/view/e0;Landroidx/core/view/e0$e;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/core/view/e0$f;->d:La/i/h/b;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/e0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsets;)Landroidx/core/view/e0;

    move-result-object v0

    return-object v0
.end method

.method c()Landroidx/core/view/e0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsets;)Landroidx/core/view/e0;

    move-result-object v0

    return-object v0
.end method

.method final e()La/i/h/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$f;->d:La/i/h/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, La/i/h/b;->a(IIII)La/i/h/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/e0$f;->d:La/i/h/b;

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/core/view/e0$f;->d:La/i/h/b;

    return-object v0
.end method

.method g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method
