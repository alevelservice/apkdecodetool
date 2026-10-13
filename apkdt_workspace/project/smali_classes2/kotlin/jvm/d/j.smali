.class public abstract Lkotlin/jvm/d/j;
.super Lkotlin/jvm/d/l;
.source "PropertyReference1.java"

# interfaces
.implements Lkotlin/z/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/d/l;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lkotlin/jvm/d/l;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lkotlin/z/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/jvm/d/n;->a(Lkotlin/jvm/d/j;)Lkotlin/z/i;

    return-object p0
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/l;->getReflected()Lkotlin/z/h;

    move-result-object v0

    check-cast v0, Lkotlin/z/i;

    invoke-interface {v0, p1}, Lkotlin/z/i;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getGetter()Lkotlin/z/h$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/j;->getGetter()Lkotlin/z/i$a;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lkotlin/z/i$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/d/l;->getReflected()Lkotlin/z/h;

    move-result-object v0

    check-cast v0, Lkotlin/z/i;

    invoke-interface {v0}, Lkotlin/z/i;->getGetter()Lkotlin/z/i$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/z/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
