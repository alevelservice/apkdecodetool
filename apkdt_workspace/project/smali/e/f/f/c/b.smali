.class public Le/f/f/c/b;
.super Ljava/lang/Object;
.source "DraweeEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/f/c/b$a;
    }
.end annotation


# static fields
.field private static final b:Le/f/f/c/b;

.field private static c:Z


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Le/f/f/c/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/f/c/b;

    invoke-direct {v0}, Le/f/f/c/b;-><init>()V

    sput-object v0, Le/f/f/c/b;->b:Le/f/f/c/b;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Le/f/f/c/b;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Le/f/f/c/b;->a:Ljava/util/Queue;

    return-void
.end method

.method public static a()Le/f/f/c/b;
    .locals 1

    .line 1
    sget-boolean v0, Le/f/f/c/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Le/f/f/c/b;

    invoke-direct {v0}, Le/f/f/c/b;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Le/f/f/c/b;->b:Le/f/f/c/b;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Le/f/f/c/b$a;)V
    .locals 2

    .line 2
    sget-boolean v0, Le/f/f/c/b;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/f/c/b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Le/f/f/c/b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Le/f/f/c/b;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/c/b;->a:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
