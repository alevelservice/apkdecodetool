.class Lk/b/a/v/g$a;
.super Ljava/lang/Object;
.source "DateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/v/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lk/b/a/v/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/v/g$a;->a()Lk/b/a/v/g;

    move-result-object v0

    sput-object v0, Lk/b/a/v/g$a;->a:Lk/b/a/v/g;

    return-void
.end method

.method static a()Lk/b/a/v/g;
    .locals 3

    .line 1
    invoke-static {}, Lk/b/a/v/g;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    new-instance v1, Lk/b/a/v/k;

    invoke-direct {v1}, Lk/b/a/v/k;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lk/b/a/v/g;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/v/g;

    return-object v0
.end method
