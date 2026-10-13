.class Le/f/i/a/b/e$b;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Le/f/i/a/c/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/a/b/e;->a(Le/f/i/a/a/c;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Le/f/i/a/b/e;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/f/i/a/b/e$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/a/b/e$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/c/g/a;

    invoke-static {p1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
