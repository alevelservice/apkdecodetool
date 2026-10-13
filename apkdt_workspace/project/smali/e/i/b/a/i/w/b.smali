.class final synthetic Le/i/b/a/i/w/b;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Le/i/b/a/i/x/b$a;


# instance fields
.field private final a:Le/i/b/a/i/w/c;

.field private final b:Le/i/b/a/i/m;

.field private final c:Le/i/b/a/i/h;


# direct methods
.method private constructor <init>(Le/i/b/a/i/w/c;Le/i/b/a/i/m;Le/i/b/a/i/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/a/i/w/b;->a:Le/i/b/a/i/w/c;

    iput-object p2, p0, Le/i/b/a/i/w/b;->b:Le/i/b/a/i/m;

    iput-object p3, p0, Le/i/b/a/i/w/b;->c:Le/i/b/a/i/h;

    return-void
.end method

.method public static a(Le/i/b/a/i/w/c;Le/i/b/a/i/m;Le/i/b/a/i/h;)Le/i/b/a/i/x/b$a;
    .locals 1

    new-instance v0, Le/i/b/a/i/w/b;

    invoke-direct {v0, p0, p1, p2}, Le/i/b/a/i/w/b;-><init>(Le/i/b/a/i/w/c;Le/i/b/a/i/m;Le/i/b/a/i/h;)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/i/b/a/i/w/b;->a:Le/i/b/a/i/w/c;

    iget-object v1, p0, Le/i/b/a/i/w/b;->b:Le/i/b/a/i/m;

    iget-object v2, p0, Le/i/b/a/i/w/b;->c:Le/i/b/a/i/h;

    invoke-static {v0, v1, v2}, Le/i/b/a/i/w/c;->a(Le/i/b/a/i/w/c;Le/i/b/a/i/m;Le/i/b/a/i/h;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
