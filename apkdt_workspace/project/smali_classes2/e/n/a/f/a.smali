.class public abstract Le/n/a/f/a;
.super Le/n/a/f/b;
.source "BaseOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/n/a/f/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/n/a/f/a;->e()Le/n/a/f/g;

    move-result-object v0

    invoke-interface {v0, p1}, Le/n/a/f/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Le/n/a/f/a;->e()Le/n/a/f/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Le/n/a/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract e()Le/n/a/f/g;
.end method
