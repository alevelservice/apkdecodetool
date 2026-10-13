.class public final Le/k/a/a;
.super Ljava/lang/Object;
.source "AndroidThreeTen.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Le/k/a/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "org/threeten/bp/TZDB.dat"

    .line 1
    invoke-static {p0, v0}, Le/k/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Le/k/a/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Le/k/a/b;

    invoke-direct {v0, p0, p1}, Le/k/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lk/b/a/y/h;->a(Lk/b/a/y/h;)V

    :cond_0
    return-void
.end method
