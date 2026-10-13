.class public Landroidx/core/provider/b$e;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Landroidx/core/provider/b$f;


# direct methods
.method public constructor <init>(I[Landroidx/core/provider/b$f;)V
    .locals 0
    .param p2    # [Landroidx/core/provider/b$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/provider/b$e;->a:I

    .line 3
    iput-object p2, p0, Landroidx/core/provider/b$e;->b:[Landroidx/core/provider/b$f;

    return-void
.end method


# virtual methods
.method public a()[Landroidx/core/provider/b$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/provider/b$e;->b:[Landroidx/core/provider/b$f;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/provider/b$e;->a:I

    return v0
.end method
