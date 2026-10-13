.class Le/f/i/c/h$a;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Le/f/i/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/c/h;->a(Le/f/i/c/v;)Le/f/i/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/i/c/v<",
        "Le/f/i/c/h$d<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/f/i/c/v;


# direct methods
.method constructor <init>(Le/f/i/c/h;Le/f/i/c/v;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/f/i/c/h$a;->a:Le/f/i/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/i/c/h$d;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/h$d<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Le/f/i/c/h$a;->a:Le/f/i/c/v;

    iget-object p1, p1, Le/f/i/c/h$d;->b:Le/f/c/g/a;

    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Le/f/i/c/v;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le/f/i/c/h$d;

    invoke-virtual {p0, p1}, Le/f/i/c/h$a;->a(Le/f/i/c/h$d;)I

    move-result p1

    return p1
.end method
