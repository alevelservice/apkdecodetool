.class Landroidx/core/view/e0$d;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/e0;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/e0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/view/e0;-><init>(Landroidx/core/view/e0;)V

    invoke-direct {p0, v0}, Landroidx/core/view/e0$d;-><init>(Landroidx/core/view/e0;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/e0;)V
    .locals 0
    .param p1    # Landroidx/core/view/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/core/view/e0$d;->a:Landroidx/core/view/e0;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/e0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$d;->a:Landroidx/core/view/e0;

    return-object v0
.end method

.method a(La/i/h/b;)V
    .locals 0
    .param p1    # La/i/h/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method b(La/i/h/b;)V
    .locals 0
    .param p1    # La/i/h/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
