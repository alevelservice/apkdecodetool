.class public final Le/i/b/b/d/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/b/d/j$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/i/b/b/d/j$a;

    invoke-direct {v0}, Le/i/b/b/d/j$a;-><init>()V

    sput-object v0, Le/i/b/b/d/j;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Le/i/b/b/d/b0;

    invoke-direct {v0}, Le/i/b/b/d/b0;-><init>()V

    sput-object v0, Le/i/b/b/d/j;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
