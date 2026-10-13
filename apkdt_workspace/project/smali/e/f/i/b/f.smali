.class public abstract Le/f/i/b/f;
.super Ljava/lang/Object;
.source "PlatformBitmapFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Le/f/i/b/f;->a(IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Le/f/c/g/a;
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/lang/Object;",
            ")",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le/f/i/b/f;->b(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
