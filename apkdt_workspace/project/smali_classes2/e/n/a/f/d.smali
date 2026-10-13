.class public Le/n/a/f/d;
.super Le/n/a/f/b;
.source "ExecuteOperation.java"


# instance fields
.field private final a:Le/n/a/d;

.field private final b:Lg/a/c/a/k$d;

.field private final c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lg/a/c/a/k$d;Le/n/a/d;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/n/a/f/b;-><init>()V

    .line 2
    iput-object p1, p0, Le/n/a/f/d;->b:Lg/a/c/a/k$d;

    .line 3
    iput-object p2, p0, Le/n/a/f/d;->a:Le/n/a/d;

    .line 4
    iput-object p3, p0, Le/n/a/f/d;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Le/n/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/f/d;->a:Le/n/a/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/n/a/f/d;->b:Lg/a/c/a/k$d;

    invoke-interface {v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/n/a/f/d;->b:Lg/a/c/a/k$d;

    invoke-interface {v0, p1, p2, p3}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/f/d;->c:Ljava/lang/Boolean;

    return-object v0
.end method
