.class public final Lg/c/a/f/g/d;
.super Lg/c/a/b/g;
.source "NewThreadScheduler.java"


# static fields
.field private static final b:Lg/c/a/f/g/g;


# instance fields
.field final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "rx3.newthread-priority"

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    new-instance v1, Lg/c/a/f/g/g;

    const-string v2, "RxNewThreadScheduler"

    invoke-direct {v1, v2, v0}, Lg/c/a/f/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/c/a/f/g/d;->b:Lg/c/a/f/g/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/f/g/d;->b:Lg/c/a/f/g/g;

    invoke-direct {p0, v0}, Lg/c/a/f/g/d;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg/c/a/b/g;-><init>()V

    .line 3
    iput-object p1, p0, Lg/c/a/f/g/d;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public a()Lg/c/a/b/g$b;
    .locals 2
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lg/c/a/f/g/e;

    iget-object v1, p0, Lg/c/a/f/g/d;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lg/c/a/f/g/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
