.class public abstract Lkotlin/jvm/d/a;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lkotlin/z/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/d/a$a;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field


# instance fields
.field private transient e:Lkotlin/z/b;

.field protected final receiver:Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/jvm/d/a$a;->access$000()Lkotlin/jvm/d/a$a;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/d/a;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/d/a;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/d/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lkotlin/jvm/d/a;->receiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/z/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/z/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Lkotlin/z/b;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/d/a;->e:Lkotlin/z/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->computeReflected()Lkotlin/z/b;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lkotlin/jvm/d/a;->e:Lkotlin/z/b;

    :cond_0
    return-object v0
.end method

.method protected abstract computeReflected()Lkotlin/z/b;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/a;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/d/a;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public getOwner()Lkotlin/z/e;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/z/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/b;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getReflected()Lkotlin/z/b;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->compute()Lkotlin/z/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/jvm/b;

    invoke-direct {v0}, Lkotlin/jvm/b;-><init>()V

    throw v0
.end method

.method public getReturnType()Lkotlin/z/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/b;->getReturnType()Lkotlin/z/j;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/b;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lkotlin/z/k;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/b;->getVisibility()Lkotlin/z/k;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/b;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/b;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/b;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/d/a;->getReflected()Lkotlin/z/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/z/b;->isSuspend()Z

    move-result v0

    return v0
.end method
