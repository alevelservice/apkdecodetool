.class final synthetic Le/i/b/a/i/w/a;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Le/i/b/a/i/w/c;

.field private final f:Le/i/b/a/i/m;

.field private final g:Le/i/b/a/h;

.field private final h:Le/i/b/a/i/h;


# direct methods
.method private constructor <init>(Le/i/b/a/i/w/c;Le/i/b/a/i/m;Le/i/b/a/h;Le/i/b/a/i/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/a/i/w/a;->e:Le/i/b/a/i/w/c;

    iput-object p2, p0, Le/i/b/a/i/w/a;->f:Le/i/b/a/i/m;

    iput-object p3, p0, Le/i/b/a/i/w/a;->g:Le/i/b/a/h;

    iput-object p4, p0, Le/i/b/a/i/w/a;->h:Le/i/b/a/i/h;

    return-void
.end method

.method public static a(Le/i/b/a/i/w/c;Le/i/b/a/i/m;Le/i/b/a/h;Le/i/b/a/i/h;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Le/i/b/a/i/w/a;

    invoke-direct {v0, p0, p1, p2, p3}, Le/i/b/a/i/w/a;-><init>(Le/i/b/a/i/w/c;Le/i/b/a/i/m;Le/i/b/a/h;Le/i/b/a/i/h;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Le/i/b/a/i/w/a;->e:Le/i/b/a/i/w/c;

    iget-object v1, p0, Le/i/b/a/i/w/a;->f:Le/i/b/a/i/m;

    iget-object v2, p0, Le/i/b/a/i/w/a;->g:Le/i/b/a/h;

    iget-object v3, p0, Le/i/b/a/i/w/a;->h:Le/i/b/a/i/h;

    invoke-static {v0, v1, v2, v3}, Le/i/b/a/i/w/c;->a(Le/i/b/a/i/w/c;Le/i/b/a/i/m;Le/i/b/a/h;Le/i/b/a/i/h;)V

    return-void
.end method
