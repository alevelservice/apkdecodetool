.class final Le/i/b/a/i/p;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Le/i/b/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/i/b/a/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Le/i/b/a/i/m;

.field private final b:Ljava/lang/String;

.field private final c:Le/i/b/a/b;

.field private final d:Le/i/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/a/e<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final e:Le/i/b/a/i/q;


# direct methods
.method constructor <init>(Le/i/b/a/i/m;Ljava/lang/String;Le/i/b/a/b;Le/i/b/a/e;Le/i/b/a/i/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/a/i/m;",
            "Ljava/lang/String;",
            "Le/i/b/a/b;",
            "Le/i/b/a/e<",
            "TT;[B>;",
            "Le/i/b/a/i/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/a/i/p;->a:Le/i/b/a/i/m;

    .line 3
    iput-object p2, p0, Le/i/b/a/i/p;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/i/b/a/i/p;->c:Le/i/b/a/b;

    .line 5
    iput-object p4, p0, Le/i/b/a/i/p;->d:Le/i/b/a/e;

    .line 6
    iput-object p5, p0, Le/i/b/a/i/p;->e:Le/i/b/a/i/q;

    return-void
.end method

.method static synthetic a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Le/i/b/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/a/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/i/b/a/i/o;->a()Le/i/b/a/h;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/i/b/a/i/p;->a(Le/i/b/a/c;Le/i/b/a/h;)V

    return-void
.end method

.method public a(Le/i/b/a/c;Le/i/b/a/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/a/c<",
            "TT;>;",
            "Le/i/b/a/h;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Le/i/b/a/i/p;->e:Le/i/b/a/i/q;

    .line 3
    invoke-static {}, Le/i/b/a/i/l;->g()Le/i/b/a/i/l$a;

    move-result-object v1

    iget-object v2, p0, Le/i/b/a/i/p;->a:Le/i/b/a/i/m;

    .line 4
    invoke-virtual {v1, v2}, Le/i/b/a/i/l$a;->a(Le/i/b/a/i/m;)Le/i/b/a/i/l$a;

    .line 5
    invoke-virtual {v1, p1}, Le/i/b/a/i/l$a;->a(Le/i/b/a/c;)Le/i/b/a/i/l$a;

    iget-object p1, p0, Le/i/b/a/i/p;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, p1}, Le/i/b/a/i/l$a;->a(Ljava/lang/String;)Le/i/b/a/i/l$a;

    iget-object p1, p0, Le/i/b/a/i/p;->d:Le/i/b/a/e;

    .line 7
    invoke-virtual {v1, p1}, Le/i/b/a/i/l$a;->a(Le/i/b/a/e;)Le/i/b/a/i/l$a;

    iget-object p1, p0, Le/i/b/a/i/p;->c:Le/i/b/a/b;

    .line 8
    invoke-virtual {v1, p1}, Le/i/b/a/i/l$a;->a(Le/i/b/a/b;)Le/i/b/a/i/l$a;

    .line 9
    invoke-virtual {v1}, Le/i/b/a/i/l$a;->a()Le/i/b/a/i/l;

    move-result-object p1

    .line 10
    invoke-interface {v0, p1, p2}, Le/i/b/a/i/q;->a(Le/i/b/a/i/l;Le/i/b/a/h;)V

    return-void
.end method
