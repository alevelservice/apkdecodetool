.class abstract La/f/a/a$b;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/f/a/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, La/f/a/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(La/f/a/a$i;La/f/a/a$i;)V
.end method

.method abstract a(La/f/a/a$i;Ljava/lang/Thread;)V
.end method

.method abstract a(La/f/a/a;La/f/a/a$e;La/f/a/a$e;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/a/a<",
            "*>;",
            "La/f/a/a$e;",
            "La/f/a/a$e;",
            ")Z"
        }
    .end annotation
.end method

.method abstract a(La/f/a/a;La/f/a/a$i;La/f/a/a$i;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/a/a<",
            "*>;",
            "La/f/a/a$i;",
            "La/f/a/a$i;",
            ")Z"
        }
    .end annotation
.end method

.method abstract a(La/f/a/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/a/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method
