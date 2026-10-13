.class public Le/f/i/b/h;
.super Ljava/lang/Object;
.source "SimpleBitmapReleaser.java"

# interfaces
.implements Le/f/c/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/c/g/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Le/f/i/b/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/f/i/b/h;
    .locals 1

    .line 2
    sget-object v0, Le/f/i/b/h;->a:Le/f/i/b/h;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Le/f/i/b/h;

    invoke-direct {v0}, Le/f/i/b/h;-><init>()V

    sput-object v0, Le/f/i/b/h;->a:Le/f/i/b/h;

    .line 4
    :cond_0
    sget-object v0, Le/f/i/b/h;->a:Le/f/i/b/h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Le/f/i/b/h;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
