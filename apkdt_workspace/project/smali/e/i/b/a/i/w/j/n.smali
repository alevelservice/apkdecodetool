.class final synthetic Le/i/b/a/i/w/j/n;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Le/i/b/a/i/w/j/b0$b;


# instance fields
.field private final a:Le/i/b/a/i/w/j/b0;

.field private final b:Ljava/util/List;

.field private final c:Le/i/b/a/i/m;


# direct methods
.method private constructor <init>(Le/i/b/a/i/w/j/b0;Ljava/util/List;Le/i/b/a/i/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/a/i/w/j/n;->a:Le/i/b/a/i/w/j/b0;

    iput-object p2, p0, Le/i/b/a/i/w/j/n;->b:Ljava/util/List;

    iput-object p3, p0, Le/i/b/a/i/w/j/n;->c:Le/i/b/a/i/m;

    return-void
.end method

.method public static a(Le/i/b/a/i/w/j/b0;Ljava/util/List;Le/i/b/a/i/m;)Le/i/b/a/i/w/j/b0$b;
    .locals 1

    new-instance v0, Le/i/b/a/i/w/j/n;

    invoke-direct {v0, p0, p1, p2}, Le/i/b/a/i/w/j/n;-><init>(Le/i/b/a/i/w/j/b0;Ljava/util/List;Le/i/b/a/i/m;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/i/b/a/i/w/j/n;->a:Le/i/b/a/i/w/j/b0;

    iget-object v1, p0, Le/i/b/a/i/w/j/n;->b:Ljava/util/List;

    iget-object v2, p0, Le/i/b/a/i/w/j/n;->c:Le/i/b/a/i/m;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Le/i/b/a/i/w/j/b0;->a(Le/i/b/a/i/w/j/b0;Ljava/util/List;Le/i/b/a/i/m;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
