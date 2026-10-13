.class final Le/i/b/a/i/j$a;
.super Ljava/lang/Object;
.source "ExecutionModule_ExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/a/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Le/i/b/a/i/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/i/b/a/i/j;

    invoke-direct {v0}, Le/i/b/a/i/j;-><init>()V

    sput-object v0, Le/i/b/a/i/j$a;->a:Le/i/b/a/i/j;

    return-void
.end method

.method static synthetic a()Le/i/b/a/i/j;
    .locals 1

    .line 1
    sget-object v0, Le/i/b/a/i/j$a;->a:Le/i/b/a/i/j;

    return-object v0
.end method
