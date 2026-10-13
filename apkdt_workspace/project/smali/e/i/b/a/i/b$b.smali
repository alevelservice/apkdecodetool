.class final Le/i/b/a/i/b$b;
.super Le/i/b/a/i/l$a;
.source "AutoValue_SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Le/i/b/a/i/m;

.field private b:Ljava/lang/String;

.field private c:Le/i/b/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/a/c<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Le/i/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/a/e<",
            "*[B>;"
        }
    .end annotation
.end field

.field private e:Le/i/b/a/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/i/b/a/i/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Le/i/b/a/b;)Le/i/b/a/i/l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Le/i/b/a/i/b$b;->e:Le/i/b/a/b;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null encoding"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Le/i/b/a/c;)Le/i/b/a/i/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/a/c<",
            "*>;)",
            "Le/i/b/a/i/l$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Le/i/b/a/i/b$b;->c:Le/i/b/a/c;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null event"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Le/i/b/a/e;)Le/i/b/a/i/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/a/e<",
            "*[B>;)",
            "Le/i/b/a/i/l$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Le/i/b/a/i/b$b;->d:Le/i/b/a/e;

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transformer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Le/i/b/a/i/m;)Le/i/b/a/i/l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Le/i/b/a/i/b$b;->a:Le/i/b/a/i/m;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportContext"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Le/i/b/a/i/l$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Le/i/b/a/i/b$b;->b:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Le/i/b/a/i/l;
    .locals 9

    .line 11
    iget-object v0, p0, Le/i/b/a/i/b$b;->a:Le/i/b/a/i/m;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Le/i/b/a/i/b$b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_1
    iget-object v0, p0, Le/i/b/a/i/b$b;->c:Le/i/b/a/c;

    if-nez v0, :cond_2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_2
    iget-object v0, p0, Le/i/b/a/i/b$b;->d:Le/i/b/a/e;

    if-nez v0, :cond_3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transformer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_3
    iget-object v0, p0, Le/i/b/a/i/b$b;->e:Le/i/b/a/b;

    if-nez v0, :cond_4

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    new-instance v0, Le/i/b/a/i/b;

    iget-object v3, p0, Le/i/b/a/i/b$b;->a:Le/i/b/a/i/m;

    iget-object v4, p0, Le/i/b/a/i/b$b;->b:Ljava/lang/String;

    iget-object v5, p0, Le/i/b/a/i/b$b;->c:Le/i/b/a/c;

    iget-object v6, p0, Le/i/b/a/i/b$b;->d:Le/i/b/a/e;

    iget-object v7, p0, Le/i/b/a/i/b$b;->e:Le/i/b/a/b;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Le/i/b/a/i/b;-><init>(Le/i/b/a/i/m;Ljava/lang/String;Le/i/b/a/c;Le/i/b/a/e;Le/i/b/a/b;Le/i/b/a/i/b$a;)V

    return-object v0

    .line 23
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
