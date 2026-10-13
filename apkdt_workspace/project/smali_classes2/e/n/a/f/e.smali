.class public Le/n/a/f/e;
.super Le/n/a/f/a;
.source "MethodCallOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/n/a/f/e$a;
    }
.end annotation


# instance fields
.field final a:Lg/a/c/a/j;

.field final b:Le/n/a/f/e$a;


# direct methods
.method public constructor <init>(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/n/a/f/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/n/a/f/e;->a:Lg/a/c/a/j;

    .line 3
    new-instance p1, Le/n/a/f/e$a;

    invoke-direct {p1, p0, p2}, Le/n/a/f/e$a;-><init>(Le/n/a/f/e;Lg/a/c/a/k$d;)V

    iput-object p1, p0, Le/n/a/f/e;->b:Le/n/a/f/e$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/n/a/f/e;->a:Lg/a/c/a/j;

    invoke-virtual {v0, p1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()Le/n/a/f/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/a/f/e;->b:Le/n/a/f/e$a;

    return-object v0
.end method
