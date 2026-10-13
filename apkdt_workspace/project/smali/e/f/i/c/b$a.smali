.class final Le/f/i/c/b$a;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheFactory.java"

# interfaces
.implements Le/f/i/c/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/c/b;->a(Le/f/i/c/h;Le/f/i/c/n;)Le/f/i/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/i/c/r<",
        "Le/f/b/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/f/i/c/n;


# direct methods
.method constructor <init>(Le/f/i/c/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/c/b$a;->a:Le/f/i/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Le/f/i/c/b$a;->a:Le/f/i/c/n;

    invoke-interface {v0}, Le/f/i/c/n;->d()V

    return-void
.end method

.method public a(Le/f/b/a/d;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/f/i/c/b$a;->a:Le/f/i/c/n;

    invoke-interface {v0, p1}, Le/f/i/c/n;->a(Le/f/b/a/d;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/f/b/a/d;

    invoke-virtual {p0, p1}, Le/f/i/c/b$a;->a(Le/f/b/a/d;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/c/b$a;->a:Le/f/i/c/n;

    invoke-interface {v0}, Le/f/i/c/n;->g()V

    return-void
.end method
