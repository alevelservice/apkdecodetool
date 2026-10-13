.class public final enum Lg/c/a/f/a/b;
.super Ljava/lang/Enum;
.source "EmptyDisposable.java"

# interfaces
.implements Lg/c/a/f/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/c/a/f/a/b;",
        ">;",
        "Lg/c/a/f/c/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lg/c/a/f/a/b;

.field public static final enum NEVER:Lg/c/a/f/a/b;

.field private static final synthetic e:[Lg/c/a/f/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lg/c/a/f/a/b;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lg/c/a/f/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    .line 2
    new-instance v0, Lg/c/a/f/a/b;

    const/4 v2, 0x1

    const-string v3, "NEVER"

    invoke-direct {v0, v3, v2}, Lg/c/a/f/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/a/f/a/b;->NEVER:Lg/c/a/f/a/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lg/c/a/f/a/b;

    .line 3
    sget-object v3, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    aput-object v3, v0, v1

    sget-object v1, Lg/c/a/f/a/b;->NEVER:Lg/c/a/f/a/b;

    aput-object v1, v0, v2

    sput-object v0, Lg/c/a/f/a/b;->e:[Lg/c/a/f/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static complete(Lg/c/a/b/a;)V
    .locals 1

    .line 5
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    invoke-interface {p0, v0}, Lg/c/a/b/a;->onSubscribe(Lg/c/a/c/c;)V

    .line 6
    invoke-interface {p0}, Lg/c/a/b/a;->onComplete()V

    return-void
.end method

.method public static complete(Lg/c/a/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/c<",
            "*>;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    invoke-interface {p0, v0}, Lg/c/a/b/c;->onSubscribe(Lg/c/a/c/c;)V

    .line 4
    invoke-interface {p0}, Lg/c/a/b/c;->onComplete()V

    return-void
.end method

.method public static complete(Lg/c/a/b/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/b/f<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    invoke-interface {p0, v0}, Lg/c/a/b/f;->onSubscribe(Lg/c/a/c/c;)V

    .line 2
    invoke-interface {p0}, Lg/c/a/b/f;->onComplete()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lg/c/a/b/a;)V
    .locals 1

    .line 3
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    invoke-interface {p1, v0}, Lg/c/a/b/a;->onSubscribe(Lg/c/a/c/c;)V

    .line 4
    invoke-interface {p1, p0}, Lg/c/a/b/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lg/c/a/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lg/c/a/b/c<",
            "*>;)V"
        }
    .end annotation

    .line 7
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    invoke-interface {p1, v0}, Lg/c/a/b/c;->onSubscribe(Lg/c/a/c/c;)V

    .line 8
    invoke-interface {p1, p0}, Lg/c/a/b/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lg/c/a/b/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lg/c/a/b/f<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    invoke-interface {p1, v0}, Lg/c/a/b/f;->onSubscribe(Lg/c/a/c/c;)V

    .line 2
    invoke-interface {p1, p0}, Lg/c/a/b/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lg/c/a/b/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lg/c/a/b/h<",
            "*>;)V"
        }
    .end annotation

    .line 5
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    invoke-interface {p1, v0}, Lg/c/a/b/h;->onSubscribe(Lg/c/a/c/c;)V

    .line 6
    invoke-interface {p1, p0}, Lg/c/a/b/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/c/a/f/a/b;
    .locals 1

    .line 1
    const-class v0, Lg/c/a/f/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/c/a/f/a/b;

    return-object p0
.end method

.method public static values()[Lg/c/a/f/a/b;
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/f/a/b;->e:[Lg/c/a/f/a/b;

    invoke-virtual {v0}, [Lg/c/a/f/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/c/a/f/a/b;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method
