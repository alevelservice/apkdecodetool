.class public Lcom/pichillilorenzo/flutter_inappwebview/c/c;
.super Ljava/lang/Object;
.source "CredentialDatabase.java"


# static fields
.field private static d:Lcom/pichillilorenzo/flutter_inappwebview/c/c;


# instance fields
.field public a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

.field public b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

.field public c:Lcom/pichillilorenzo/flutter_inappwebview/c/d;


# direct methods
.method private constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/c/d;Lcom/pichillilorenzo/flutter_inappwebview/c/f;Lcom/pichillilorenzo/flutter_inappwebview/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->c:Lcom/pichillilorenzo/flutter_inappwebview/c/d;

    .line 3
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    .line 4
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview/c/c;
    .locals 3

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->d:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/c/d;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/c/d;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    invoke-direct {v1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/c/f;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/c/d;)V

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    invoke-direct {v2, v0}, Lcom/pichillilorenzo/flutter_inappwebview/c/b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/c/d;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/c/c;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/c/d;Lcom/pichillilorenzo/flutter_inappwebview/c/f;Lcom/pichillilorenzo/flutter_inappwebview/c/b;)V

    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->d:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    .line 4
    sget-object p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->d:Lcom/pichillilorenzo/flutter_inappwebview/c/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/c/a;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->a:Ljava/lang/Long;

    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/b;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->c:Lcom/pichillilorenzo/flutter_inappwebview/c/d;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/c/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->a:Ljava/lang/Long;

    invoke-virtual {p2, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/pichillilorenzo/flutter_inappwebview/c/a;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/b;->a(Lcom/pichillilorenzo/flutter_inappwebview/c/a;)J

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/f;->a(Lcom/pichillilorenzo/flutter_inappwebview/c/e;)J

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/c/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->a:Lcom/pichillilorenzo/flutter_inappwebview/c/f;

    new-instance v7, Lcom/pichillilorenzo/flutter_inappwebview/c/e;

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/c/e;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v7}, Lcom/pichillilorenzo/flutter_inappwebview/c/f;->b(Lcom/pichillilorenzo/flutter_inappwebview/c/e;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Lcom/pichillilorenzo/flutter_inappwebview/c/e;->a:Ljava/lang/Long;

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    invoke-virtual {p2, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/pichillilorenzo/flutter_inappwebview/c/a;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 7
    iget-object p3, p2, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->b:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_1

    .line 8
    iput-object p5, p2, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 9
    :cond_1
    iget-object p3, p2, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->c:Ljava/lang/String;

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 10
    iput-object p6, p2, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->c:Ljava/lang/String;

    const/4 p1, 0x1

    :cond_2
    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    invoke-virtual {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/c/b;->c(Lcom/pichillilorenzo/flutter_inappwebview/c/a;)J

    goto :goto_1

    .line 12
    :cond_3
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/c/a;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview/c/a;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/c/c;->b:Lcom/pichillilorenzo/flutter_inappwebview/c/b;

    invoke-virtual {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/c/b;->b(Lcom/pichillilorenzo/flutter_inappwebview/c/a;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lcom/pichillilorenzo/flutter_inappwebview/c/a;->a:Ljava/lang/Long;

    :cond_4
    :goto_1
    return-void
.end method
