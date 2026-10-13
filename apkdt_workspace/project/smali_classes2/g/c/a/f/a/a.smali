.class public final enum Lg/c/a/f/a/a;
.super Ljava/lang/Enum;
.source "DisposableHelper.java"

# interfaces
.implements Lg/c/a/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/c/a/f/a/a;",
        ">;",
        "Lg/c/a/c/c;"
    }
.end annotation


# static fields
.field public static final enum DISPOSED:Lg/c/a/f/a/a;

.field private static final synthetic e:[Lg/c/a/f/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg/c/a/f/a/a;

    const/4 v1, 0x0

    const-string v2, "DISPOSED"

    invoke-direct {v0, v2, v1}, Lg/c/a/f/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Lg/c/a/f/a/a;

    .line 2
    sget-object v2, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    aput-object v2, v0, v1

    sput-object v0, Lg/c/a/f/a/a;->e:[Lg/c/a/f/a/a;

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

.method public static dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lg/c/a/c/c;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c/a/c/c;

    .line 2
    sget-object v1, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/c/a/c/c;

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lg/c/a/c/c;->dispose()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isDisposed(Lg/c/a/c/c;)Z
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static replace(Ljava/util/concurrent/atomic/AtomicReference;Lg/c/a/c/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lg/c/a/c/c;",
            ">;",
            "Lg/c/a/c/c;",
            ")Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c/a/c/c;

    .line 2
    sget-object v1, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static reportDisposableSet()V
    .locals 2

    .line 1
    new-instance v0, Lg/c/a/d/e;

    const-string v1, "Disposable already set!"

    invoke-direct {v0, v1}, Lg/c/a/d/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static set(Ljava/util/concurrent/atomic/AtomicReference;Lg/c/a/c/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lg/c/a/c/c;",
            ">;",
            "Lg/c/a/c/c;",
            ")Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c/a/c/c;

    .line 2
    sget-object v1, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Lg/c/a/c/c;->dispose()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lg/c/a/c/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lg/c/a/c/c;",
            ">;",
            "Lg/c/a/c/c;",
            ")Z"
        }
    .end annotation

    const-string v0, "d is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    if-eq p0, p1, :cond_0

    .line 5
    invoke-static {}, Lg/c/a/f/a/a;->reportDisposableSet()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static trySet(Ljava/util/concurrent/atomic/AtomicReference;Lg/c/a/c/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lg/c/a/c/c;",
            ">;",
            "Lg/c/a/c/c;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lg/c/a/f/a/a;->DISPOSED:Lg/c/a/f/a/a;

    if-ne p0, v0, :cond_0

    .line 3
    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static validate(Lg/c/a/c/c;Lg/c/a/c/c;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "next is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p1}, Lg/c/a/c/c;->dispose()V

    .line 3
    invoke-static {}, Lg/c/a/f/a/a;->reportDisposableSet()V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/c/a/f/a/a;
    .locals 1

    .line 1
    const-class v0, Lg/c/a/f/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/c/a/f/a/a;

    return-object p0
.end method

.method public static values()[Lg/c/a/f/a/a;
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/f/a/a;->e:[Lg/c/a/f/a/a;

    invoke-virtual {v0}, [Lg/c/a/f/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/c/a/f/a/a;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
