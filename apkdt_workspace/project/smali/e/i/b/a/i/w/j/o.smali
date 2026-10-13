.class final synthetic Le/i/b/a/i/w/j/o;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Le/i/b/a/i/w/j/b0$b;


# static fields
.field private static final a:Le/i/b/a/i/w/j/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/i/b/a/i/w/j/o;

    invoke-direct {v0}, Le/i/b/a/i/w/j/o;-><init>()V

    sput-object v0, Le/i/b/a/i/w/j/o;->a:Le/i/b/a/i/w/j/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/i/b/a/i/w/j/b0$b;
    .locals 1

    sget-object v0, Le/i/b/a/i/w/j/o;->a:Le/i/b/a/i/w/j/o;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Le/i/b/a/i/w/j/b0;->d(Landroid/database/Cursor;)[B

    move-result-object p1

    return-object p1
.end method
