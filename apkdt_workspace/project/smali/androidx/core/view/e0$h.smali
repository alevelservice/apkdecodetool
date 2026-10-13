.class Landroidx/core/view/e0$h;
.super Landroidx/core/view/e0$g;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


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
    invoke-direct {p0, p1, p2}, Landroidx/core/view/e0$g;-><init>(Landroidx/core/view/e0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/e0;Landroidx/core/view/e0$h;)V
    .locals 0
    .param p1    # Landroidx/core/view/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/e0$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/view/e0$g;-><init>(Landroidx/core/view/e0;Landroidx/core/view/e0$g;)V

    return-void
.end method


# virtual methods
.method a(IIII)Landroidx/core/view/e0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsets;)Landroidx/core/view/e0;

    move-result-object p1

    return-object p1
.end method
