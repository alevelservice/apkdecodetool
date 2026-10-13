.class final synthetic Le/i/b/a/i/w/j/w;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Le/i/b/a/i/w/j/b0$b;


# instance fields
.field private final a:Le/i/b/a/i/w/j/b0;

.field private final b:Le/i/b/a/i/m;

.field private final c:Le/i/b/a/i/h;


# direct methods
.method private constructor <init>(Le/i/b/a/i/w/j/b0;Le/i/b/a/i/m;Le/i/b/a/i/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/a/i/w/j/w;->a:Le/i/b/a/i/w/j/b0;

    iput-object p2, p0, Le/i/b/a/i/w/j/w;->b:Le/i/b/a/i/m;

    iput-object p3, p0, Le/i/b/a/i/w/j/w;->c:Le/i/b/a/i/h;

    return-void
.end method

.method public static a(Le/i/b/a/i/w/j/b0;Le/i/b/a/i/m;Le/i/b/a/i/h;)Le/i/b/a/i/w/j/b0$b;
    .locals 1

    new-instance v0, Le/i/b/a/i/w/j/w;

    invoke-direct {v0, p0, p1, p2}, Le/i/b/a/i/w/j/w;-><init>(Le/i/b/a/i/w/j/b0;Le/i/b/a/i/m;Le/i/b/a/i/h;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/i/b/a/i/w/j/w;->a:Le/i/b/a/i/w/j/b0;

    iget-object v1, p0, Le/i/b/a/i/w/j/w;->b:Le/i/b/a/i/m;

    iget-object v2, p0, Le/i/b/a/i/w/j/w;->c:Le/i/b/a/i/h;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Le/i/b/a/i/w/j/b0;->a(Le/i/b/a/i/w/j/b0;Le/i/b/a/i/m;Le/i/b/a/i/h;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
