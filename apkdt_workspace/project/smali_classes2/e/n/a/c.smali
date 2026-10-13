.class public Le/n/a/c;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a;
.implements Lg/a/c/a/k$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/n/a/c$i;
    }
.end annotation


# static fields
.field static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z

.field private static i:I

.field static j:I

.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/lang/Object;

.field static m:Ljava/lang/String;

.field private static n:I

.field private static o:Landroid/os/HandlerThread;

.field private static p:Landroid/os/Handler;

.field static final q:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/n/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lg/a/c/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/n/a/c;->g:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Le/n/a/c;->h:Z

    const/16 v1, 0xa

    .line 3
    sput v1, Le/n/a/c;->i:I

    .line 4
    sput v0, Le/n/a/c;->j:I

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Le/n/a/c;->k:Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Le/n/a/c;->l:Ljava/lang/Object;

    .line 7
    sput v0, Le/n/a/c;->n:I

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/n/a/c;->q:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 2
    sget v0, Le/n/a/c;->n:I

    return v0
.end method

.method private a(I)Le/n/a/a;
    .locals 1

    .line 46
    sget-object v0, Le/n/a/c;->q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/n/a/a;

    return-object p1
.end method

.method private a(Le/n/a/a;Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;
    .locals 2

    .line 50
    invoke-direct {p0, p2}, Le/n/a/c;->a(Lg/a/c/a/j;)Le/n/a/d;

    move-result-object v0

    const-string v1, "inTransaction"

    .line 51
    invoke-virtual {p2, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 52
    new-instance v1, Le/n/a/f/d;

    invoke-direct {v1, p3, v0, p2}, Le/n/a/f/d;-><init>(Lg/a/c/a/k$d;Le/n/a/d;Ljava/lang/Boolean;)V

    .line 53
    invoke-direct {p0, p1, v1}, Le/n/a/c;->b(Le/n/a/a;Le/n/a/f/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Le/n/a/c;Le/n/a/a;Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Le/n/a/c;->a(Le/n/a/a;Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Lg/a/c/a/j;)Le/n/a/d;
    .locals 2

    const-string v0, "sql"

    .line 47
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "arguments"

    .line 48
    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 49
    new-instance v1, Le/n/a/d;

    invoke-direct {v1, v0, p1}, Le/n/a/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    check-cast p0, [B

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 42
    check-cast p0, Ljava/util/Map;

    .line 43
    invoke-static {p0}, Le/n/a/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/database/Cursor;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 10
    invoke-static {p0, v1}, Le/n/a/c;->b(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    .line 11
    sget-boolean v3, Le/n/a/e/a;->c:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const-string v4, ")"

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "array("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 15
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method static a(IZZ)Ljava/util/Map;
    .locals 2

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 63
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "recovered"

    .line 64
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "recoveredInTransaction"

    .line 65
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 19
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 20
    sget-boolean v4, Le/n/a/e/a;->c:Z

    if-eqz v4, :cond_0

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    :cond_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_2
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 25
    :cond_3
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 26
    :cond_4
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 27
    :cond_5
    aget-object v4, v1, v3

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 31
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 32
    check-cast v2, Ljava/util/Map;

    .line 33
    invoke-static {v2}, Le/n/a/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    .line 34
    :cond_0
    invoke-static {v2}, Le/n/a/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 35
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Le/n/a/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 6
    iput-object p1, p0, Le/n/a/c;->e:Landroid/content/Context;

    .line 7
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "com.tekartik.sqflite"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object p1, p0, Le/n/a/c;->f:Lg/a/c/a/k;

    .line 8
    iget-object p1, p0, Le/n/a/c;->f:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method private a(Le/n/a/a;)V
    .locals 3

    .line 66
    :try_start_0
    iget v0, p1, Le/n/a/a;->d:I

    invoke-static {v0}, Le/n/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "closing database "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Le/n/a/c;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    :cond_0
    invoke-virtual {p1}, Le/n/a/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while closing database "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Le/n/a/c;->n:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    :goto_0
    sget-object v0, Le/n/a/c;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_1
    sget-object v1, Le/n/a/c;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Le/n/a/c;->p:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 72
    iget v1, p1, Le/n/a/a;->d:I

    invoke-static {v1}, Le/n/a/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "stopping thread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Le/n/a/c;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    :cond_1
    sget-object p1, Le/n/a/c;->o:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    const/4 p1, 0x0

    .line 75
    sput-object p1, Le/n/a/c;->o:Landroid/os/HandlerThread;

    .line 76
    sput-object p1, Le/n/a/c;->p:Landroid/os/Handler;

    .line 77
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Le/n/a/c;Le/n/a/a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Le/n/a/c;->a(Le/n/a/a;)V

    return-void
.end method

.method static synthetic a(Le/n/a/c;Ljava/lang/Exception;Le/n/a/f/f;Le/n/a/a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Le/n/a/c;->a(Ljava/lang/Exception;Le/n/a/f/f;Le/n/a/a;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;Le/n/a/f/f;Le/n/a/a;)V
    .locals 2

    .line 56
    instance-of v0, p1, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    const-string v1, "sqlite_error"

    if-eqz v0, :cond_0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open_failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Le/n/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, v1, p1, p3}, Le/n/a/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_0
    instance-of p3, p1, Landroid/database/SQLException;

    if-eqz p3, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Le/n/a/f/h;->a(Le/n/a/f/f;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, v1, p1, p3}, Le/n/a/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Le/n/a/f/h;->a(Le/n/a/f/f;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, v1, p1, p3}, Le/n/a/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Le/n/a/a;Le/n/a/f/f;)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Le/n/a/c;->b(Le/n/a/a;Le/n/a/f/f;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 55
    invoke-interface {p2, p1}, Le/n/a/f/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->d(Le/n/a/a;Le/n/a/f/f;)Z

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ":memory:"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object v0, Le/n/a/c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 3

    .line 3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method private b(Le/n/a/a;Le/n/a/f/f;)Z
    .locals 5

    .line 8
    invoke-interface {p2}, Le/n/a/f/f;->a()Le/n/a/d;

    move-result-object v0

    .line 9
    iget v1, p1, Le/n/a/a;->d:I

    invoke-static {v1}, Le/n/a/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    :cond_0
    invoke-interface {p2}, Le/n/a/f/f;->c()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Le/n/a/a;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v0}, Le/n/a/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Le/n/a/d;->d()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 14
    iput-boolean v3, p1, Le/n/a/a;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    iput-boolean v2, p1, Le/n/a/a;->f:Z

    :cond_2
    return v3

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    :try_start_1
    invoke-direct {p0, v0, p2, p1}, Le/n/a/c;->a(Ljava/lang/Exception;Le/n/a/f/f;Le/n/a/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 19
    iput-boolean v2, p1, Le/n/a/a;->f:Z

    :cond_3
    return v2

    .line 20
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iput-boolean v2, p1, Le/n/a/a;->f:Z

    .line 22
    :cond_4
    throw p2
.end method

.method static synthetic b(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->a(Le/n/a/a;Le/n/a/f/f;)Z

    move-result p0

    return p0
.end method

.method private c(Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;
    .locals 2

    const-string v0, "id"

    .line 3
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    invoke-direct {p0, p1}, Le/n/a/c;->a(I)Le/n/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database_closed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "sqlite_error"

    invoke-interface {p2, v1, p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object v0, Le/n/a/c;->k:Ljava/lang/Object;

    return-object v0
.end method

.method private c(Le/n/a/a;Le/n/a/f/f;)Z
    .locals 8

    .line 6
    invoke-direct {p0, p1, p2}, Le/n/a/c;->b(Le/n/a/a;Le/n/a/f/f;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-interface {p2}, Le/n/a/f/f;->b()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p2, v2}, Le/n/a/f/g;->a(Ljava/lang/Object;)V

    return v3

    :cond_1
    const-string v0, "SELECT changes(), last_insert_rowid()"

    .line 9
    :try_start_0
    invoke-virtual {p1}, Le/n/a/a;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 11
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 12
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 13
    iget v4, p1, Le/n/a/a;->d:I

    invoke-static {v4}, Le/n/a/b;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "no changes (id was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    :cond_2
    invoke-interface {p2, v2}, Le/n/a/f/g;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v3

    .line 17
    :cond_4
    :try_start_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 18
    iget v2, p1, Le/n/a/a;->d:I

    invoke-static {v2}, Le/n/a/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "inserted "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Le/n/a/f/g;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_6

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v3

    :catch_0
    move-exception v2

    goto :goto_0

    .line 22
    :cond_7
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fail to read changes for Insert"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    invoke-interface {p2, v2}, Le/n/a/f/g;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_8

    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    return v3

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    .line 25
    :goto_0
    :try_start_4
    invoke-direct {p0, v2, p2, p1}, Le/n/a/c;->a(Ljava/lang/Exception;Le/n/a/f/f;Le/n/a/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_9

    .line 26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 27
    :cond_a
    throw p1
.end method

.method static synthetic c(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->c(Le/n/a/a;Le/n/a/f/f;)Z

    move-result p0

    return p0
.end method

.method private d(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Le/n/a/c;->c(Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Le/n/a/c$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V

    .line 4
    sget-object p2, Le/n/a/c;->p:Landroid/os/Handler;

    new-instance v2, Le/n/a/c$b;

    invoke-direct {v2, p0, p1, v1, v0}, Le/n/a/c$b;-><init>(Le/n/a/c;Lg/a/c/a/j;Le/n/a/c$i;Le/n/a/a;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(Le/n/a/a;Le/n/a/f/f;)Z
    .locals 11

    .line 5
    invoke-interface {p2}, Le/n/a/f/f;->a()Le/n/a/d;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget v2, p1, Le/n/a/a;->d:I

    invoke-static {v2}, Le/n/a/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_0
    sget-boolean v2, Le/n/a/c;->h:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v0}, Le/n/a/d;->e()Le/n/a/d;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Le/n/a/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v0}, Le/n/a/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Le/n/a/d;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v4

    const/4 v5, 0x0

    .line 12
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_2

    .line 13
    invoke-static {v0}, Le/n/a/c;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v7

    .line 14
    iget v8, p1, Le/n/a/a;->d:I

    invoke-static {v8}, Le/n/a/b;->a(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Le/n/a/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    :cond_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    const-string v7, "columns"

    .line 20
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "rows"

    .line 21
    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v6

    move-object v6, v4

    move-object v4, v5

    move v5, v10

    .line 22
    :cond_3
    invoke-static {v0, v5}, Le/n/a/c;->a(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 23
    invoke-interface {p2, v1}, Le/n/a/f/g;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    .line 24
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 25
    :cond_6
    invoke-interface {p2, v4}, Le/n/a/f/g;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 p1, 0x1

    if-eqz v0, :cond_7

    .line 26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v4, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v1

    .line 27
    :goto_2
    :try_start_2
    invoke-direct {p0, v1, p2, p1}, Le/n/a/c;->a(Ljava/lang/Exception;Le/n/a/f/f;Le/n/a/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_8

    .line 28
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    return v3

    :goto_3
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 29
    :cond_9
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method static synthetic d(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->e(Le/n/a/a;Le/n/a/f/f;)Z

    move-result p0

    return p0
.end method

.method private e(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 4

    const-string v0, "id"

    .line 18
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 19
    invoke-direct {p0, p1, p2}, Le/n/a/c;->c(Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    iget v1, p1, Le/n/a/a;->d:I

    invoke-static {v1}, Le/n/a/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Le/n/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    :cond_1
    iget-object v1, p1, Le/n/a/a;->b:Ljava/lang/String;

    .line 23
    sget-object v2, Le/n/a/c;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 24
    :try_start_0
    sget-object v3, Le/n/a/c;->q:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-boolean v0, p1, Le/n/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 26
    sget-object v0, Le/n/a/c;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    new-instance v0, Le/n/a/c$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V

    .line 29
    sget-object p2, Le/n/a/c;->p:Landroid/os/Handler;

    new-instance v1, Le/n/a/c$g;

    invoke-direct {v1, p0, p1, v0}, Le/n/a/c$g;-><init>(Le/n/a/c;Le/n/a/a;Le/n/a/c$i;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private e(Le/n/a/a;Le/n/a/f/f;)Z
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->b(Le/n/a/a;Le/n/a/f/f;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p2}, Le/n/a/f/f;->b()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2, v3}, Le/n/a/f/g;->a(Ljava/lang/Object;)V

    return v2

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Le/n/a/a;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "SELECT changes()"

    .line 5
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 6
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 8
    iget v4, p1, Le/n/a/a;->d:I

    invoke-static {v4}, Le/n/a/b;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Le/n/a/f/g;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    .line 12
    :cond_4
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "fail to read changes for Update/Delete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    invoke-interface {p2, v3}, Le/n/a/f/g;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v2

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v2

    .line 15
    :goto_0
    :try_start_3
    invoke-direct {p0, v2, p2, p1}, Le/n/a/c;->a(Ljava/lang/Exception;Le/n/a/f/f;Le/n/a/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_6

    .line 16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    return v1

    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_7
    throw p1
.end method

.method private f(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 8

    const-string v0, "cmd"

    .line 1
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "get"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    sget p1, Le/n/a/c;->j:I

    const-string v1, "logLevel"

    if-lez p1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    sget-object p1, Le/n/a/c;->q:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 8
    sget-object v2, Le/n/a/c;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/n/a/a;

    .line 10
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v6, v4, Le/n/a/a;->b:Ljava/lang/String;

    const-string v7, "path"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-boolean v6, v4, Le/n/a/a;->a:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "singleInstance"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v4, v4, Le/n/a/a;->d:I

    if-lez v4, :cond_1

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "databases"

    .line 16
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_3
    invoke-interface {p2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private g(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Le/n/a/e/a;->a:Z

    .line 3
    sget-boolean p1, Le/n/a/e/a;->b:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-boolean p1, Le/n/a/e/a;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Le/n/a/e/a;->c:Z

    .line 4
    sget-boolean p1, Le/n/a/e/a;->a:Z

    if-eqz p1, :cond_2

    .line 5
    sget-boolean p1, Le/n/a/e/a;->c:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 6
    sput p1, Le/n/a/c;->j:I

    goto :goto_1

    .line 7
    :cond_1
    sget-boolean p1, Le/n/a/e/a;->a:Z

    if-eqz p1, :cond_3

    .line 8
    sput v0, Le/n/a/c;->j:I

    goto :goto_1

    .line 9
    :cond_2
    sput v1, Le/n/a/c;->j:I

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 10
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private h(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 6

    const-string v0, "path"

    .line 1
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    sget-object v0, Le/n/a/c;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget v1, Le/n/a/c;->j:I

    invoke-static {v1}, Le/n/a/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Look for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Le/n/a/c;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    :cond_0
    sget-object v1, Le/n/a/c;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    sget-object v3, Le/n/a/c;->q:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/n/a/a;

    if-eqz v3, :cond_3

    .line 7
    iget-object v4, v3, Le/n/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    sget v4, Le/n/a/c;->j:I

    invoke-static {v4}, Le/n/a/b;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "found single instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Le/n/a/a;->f:Z

    if-eqz v5, :cond_1

    const-string v5, "(in transaction) "

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    :cond_2
    sget-object v4, Le/n/a/c;->q:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Le/n/a/c;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    new-instance v0, Le/n/a/c$i;

    invoke-direct {v0, p0, p2, v2}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V

    .line 14
    new-instance p2, Le/n/a/c$h;

    invoke-direct {p2, p0, v3, p1, v0}, Le/n/a/c$h;-><init>(Le/n/a/c;Le/n/a/a;Ljava/lang/String;Le/n/a/c$i;)V

    .line 15
    sget-object p1, Le/n/a/c;->p:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 17
    :cond_4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private i(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->c(Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Le/n/a/c$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V

    .line 3
    sget-object p2, Le/n/a/c;->p:Landroid/os/Handler;

    new-instance v2, Le/n/a/c$d;

    invoke-direct {v2, p0, v0, p1, v1}, Le/n/a/c$d;-><init>(Le/n/a/c;Le/n/a/a;Lg/a/c/a/j;Le/n/a/c$i;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private j(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->c(Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Le/n/a/c$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V

    .line 3
    sget-object p2, Le/n/a/c;->p:Landroid/os/Handler;

    new-instance v2, Le/n/a/c$c;

    invoke-direct {v2, p0, p1, v1, v0}, Le/n/a/c$c;-><init>(Le/n/a/c;Lg/a/c/a/j;Le/n/a/c$i;Le/n/a/a;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private k(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 12

    const-string v0, "path"

    .line 1
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "readOnly"

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    .line 3
    invoke-static {v4}, Le/n/a/c;->a(Ljava/lang/String;)Z

    move-result v3

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "singleInstance"

    invoke-virtual {p1, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_6

    .line 5
    sget-object v0, Le/n/a/c;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget v2, Le/n/a/c;->j:I

    invoke-static {v2}, Le/n/a/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Look for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Le/n/a/c;->g:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    :cond_1
    sget-object v2, Le/n/a/c;->g:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 9
    sget-object v5, Le/n/a/c;->q:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/n/a/a;

    if-eqz v5, :cond_5

    .line 10
    iget-object v7, v5, Le/n/a/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_2

    .line 11
    sget v2, Le/n/a/c;->j:I

    invoke-static {v2}, Le/n/a/b;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "single instance database of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not opened"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 13
    :cond_2
    sget p1, Le/n/a/c;->j:I

    invoke-static {p1}, Le/n/a/b;->b(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "re-opened single instance "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v5, Le/n/a/a;->f:Z

    if-eqz v3, :cond_3

    const-string v3, "(in transaction) "

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v2, v5, Le/n/a/a;->f:Z

    invoke-static {p1, v1, v2}, Le/n/a/c;->a(IZZ)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_5
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 18
    :cond_6
    :goto_3
    sget-object v0, Le/n/a/c;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_1
    sget v2, Le/n/a/c;->n:I

    add-int/lit8 v10, v2, 0x1

    sput v10, Le/n/a/c;->n:I

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 21
    new-instance v7, Le/n/a/a;

    sget v0, Le/n/a/c;->j:I

    invoke-direct {v7, v4, v10, v9, v0}, Le/n/a/a;-><init>(Ljava/lang/String;IZI)V

    .line 22
    new-instance v5, Le/n/a/c$i;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p2, v0}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V

    .line 23
    sget-object p2, Le/n/a/c;->k:Ljava/lang/Object;

    monitor-enter p2

    .line 24
    :try_start_2
    sget-object v0, Le/n/a/c;->p:Landroid/os/Handler;

    if-nez v0, :cond_7

    .line 25
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Sqflite"

    sget v2, Le/n/a/c;->i:I

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/n/a/c;->o:Landroid/os/HandlerThread;

    .line 26
    sget-object v0, Le/n/a/c;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Le/n/a/c;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Le/n/a/c;->p:Landroid/os/Handler;

    .line 28
    iget v0, v7, Le/n/a/a;->d:I

    invoke-static {v0}, Le/n/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "starting thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Le/n/a/c;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " priority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Le/n/a/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    :cond_7
    iget v0, v7, Le/n/a/a;->d:I

    invoke-static {v0}, Le/n/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Le/n/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "opened "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    :cond_8
    sget-object v0, Le/n/a/c;->p:Landroid/os/Handler;

    new-instance v11, Le/n/a/c$f;

    move-object v1, v11

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Le/n/a/c$f;-><init>(Le/n/a/c;ZLjava/lang/String;Le/n/a/c$i;Ljava/lang/Boolean;Le/n/a/a;Lg/a/c/a/j;ZI)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 34
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private l(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->c(Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Le/n/a/c$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V

    .line 3
    sget-object p2, Le/n/a/c;->p:Landroid/os/Handler;

    new-instance v2, Le/n/a/c$a;

    invoke-direct {v2, p0, p1, v1, v0}, Le/n/a/c$a;-><init>(Le/n/a/c;Lg/a/c/a/j;Le/n/a/c$i;Le/n/a/a;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private m(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->c(Lg/a/c/a/j;Lg/a/c/a/k$d;)Le/n/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Le/n/a/c$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Le/n/a/c$i;-><init>(Le/n/a/c;Lg/a/c/a/k$d;Le/n/a/c$a;)V

    .line 3
    sget-object p2, Le/n/a/c;->p:Landroid/os/Handler;

    new-instance v2, Le/n/a/c$e;

    invoke-direct {v2, p0, p1, v1, v0}, Le/n/a/c$e;-><init>(Le/n/a/c;Lg/a/c/a/j;Le/n/a/c$i;Le/n/a/a;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method a(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 1

    .line 78
    sget-object p1, Le/n/a/c;->m:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Le/n/a/c;->e:Landroid/content/Context;

    const-string v0, "tekartik_sqflite.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Le/n/a/c;->m:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object p1, Le/n/a/c;->m:Ljava/lang/String;

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method b(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 2

    const-string v0, "queryAsMapList"

    .line 23
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Le/n/a/c;->h:Z

    :cond_0
    const-string v0, "androidThreadPriority"

    .line 25
    invoke-virtual {p1, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Le/n/a/c;->i:I

    .line 27
    :cond_1
    invoke-static {p1}, Le/n/a/b;->a(Lg/a/c/a/j;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Le/n/a/c;->j:I

    :cond_2
    const/4 p1, 0x0

    .line 29
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Le/n/a/c;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Le/n/a/c;->e:Landroid/content/Context;

    .line 2
    iget-object v0, p0, Le/n/a/c;->f:Lg/a/c/a/k;

    invoke-virtual {v0, p1}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    iput-object p1, p0, Le/n/a/c;->f:Lg/a/c/a/k;

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "getDatabasesPath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "getPlatformVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_4
    const-string v1, "batch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "openDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "debugMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_7
    const-string v1, "deleteDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v1, "insert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_b
    const-string v1, "closeDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string v1, "execute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, p2}, Le/n/a/c;->g(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 4
    :pswitch_1
    invoke-direct {p0, p1, p2}, Le/n/a/c;->f(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 5
    :pswitch_2
    invoke-direct {p0, p1, p2}, Le/n/a/c;->h(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 6
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Le/n/a/c;->a(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 7
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Le/n/a/c;->b(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 8
    :pswitch_5
    invoke-direct {p0, p1, p2}, Le/n/a/c;->d(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 9
    :pswitch_6
    invoke-direct {p0, p1, p2}, Le/n/a/c;->k(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 10
    :pswitch_7
    invoke-direct {p0, p1, p2}, Le/n/a/c;->i(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 11
    :pswitch_8
    invoke-direct {p0, p1, p2}, Le/n/a/c;->m(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 12
    :pswitch_9
    invoke-direct {p0, p1, p2}, Le/n/a/c;->j(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 13
    :pswitch_a
    invoke-direct {p0, p1, p2}, Le/n/a/c;->l(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 14
    :pswitch_b
    invoke-direct {p0, p1, p2}, Le/n/a/c;->e(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    goto :goto_2

    .line 15
    :pswitch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Android "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4ea7088b -> :sswitch_c
        -0x4ab8246d -> :sswitch_b
        -0x4a797962 -> :sswitch_a
        -0x468f3d47 -> :sswitch_9
        -0x31ffc737 -> :sswitch_8
        -0xfb4dfba -> :sswitch_7
        -0xbd41d6a -> :sswitch_6
        -0x1064e1b -> :sswitch_5
        0x592d73a -> :sswitch_4
        0x5b09653 -> :sswitch_3
        0x66f18c8 -> :sswitch_2
        0x529446af -> :sswitch_1
        0x6f17c6e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
