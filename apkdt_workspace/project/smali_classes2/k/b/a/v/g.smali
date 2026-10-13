.class public abstract Lk/b/a/v/g;
.super Ljava/lang/Object;
.source "DateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/a/v/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lk/b/a/v/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lk/b/a/v/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static b()Lk/b/a/v/g;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/g$a;->a:Lk/b/a/v/g;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lk/b/a/x/i;JLk/b/a/v/l;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract a(Lk/b/a/x/i;Lk/b/a/v/l;Ljava/util/Locale;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/i;",
            "Lk/b/a/v/l;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method
