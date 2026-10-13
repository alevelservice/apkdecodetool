.class public final La/f/a/b;
.super La/f/a/a;
.source "ResolvableFuture.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/f/a/a<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/f/a/a;-><init>()V

    return-void
.end method

.method public static d()La/f/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "La/f/a/b<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, La/f/a/b;

    invoke-direct {v0}, La/f/a/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, La/f/a/a;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, La/f/a/a;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
