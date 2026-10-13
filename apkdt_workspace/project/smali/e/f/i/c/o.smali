.class public Le/f/i/c/o;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCache.java"

# interfaces
.implements Le/f/i/c/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/i/c/p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Le/f/i/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/p<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Le/f/i/c/r;


# direct methods
.method public constructor <init>(Le/f/i/c/p;Le/f/i/c/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/p<",
            "TK;TV;>;",
            "Le/f/i/c/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/c/o;->a:Le/f/i/c/p;

    .line 3
    iput-object p2, p0, Le/f/i/c/o;->b:Le/f/i/c/r;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/f/c/g/a;)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Le/f/c/g/a<",
            "TV;>;)",
            "Le/f/c/g/a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/c/o;->b:Le/f/i/c/r;

    invoke-interface {v0}, Le/f/i/c/r;->a()V

    .line 2
    iget-object v0, p0, Le/f/i/c/o;->a:Le/f/i/c/p;

    invoke-interface {v0, p1, p2}, Le/f/i/c/p;->a(Ljava/lang/Object;Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Le/f/c/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Le/f/c/g/a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/c/o;->a:Le/f/i/c/p;

    invoke-interface {v0, p1}, Le/f/i/c/p;->get(Ljava/lang/Object;)Le/f/c/g/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Le/f/i/c/o;->b:Le/f/i/c/r;

    invoke-interface {p1}, Le/f/i/c/r;->b()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/f/i/c/o;->b:Le/f/i/c/r;

    invoke-interface {v1, p1}, Le/f/i/c/r;->a(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
