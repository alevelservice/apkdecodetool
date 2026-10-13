.class public Le/f/i/b/c;
.super Le/f/i/b/f;
.source "GingerbreadBitmapFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/i/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;
    .locals 0
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

    .line 1
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {}, Le/f/i/b/h;->a()Le/f/i/b/h;

    move-result-object p2

    invoke-static {p1, p2}, Le/f/c/g/a;->a(Ljava/lang/Object;Le/f/c/g/c;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method
