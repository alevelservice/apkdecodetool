.class Le/n/a/c$g;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c;->e(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Le/n/a/a;

.field final synthetic f:Le/n/a/c$i;

.field final synthetic g:Le/n/a/c;


# direct methods
.method constructor <init>(Le/n/a/c;Le/n/a/a;Le/n/a/c$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$g;->g:Le/n/a/c;

    iput-object p2, p0, Le/n/a/c$g;->e:Le/n/a/a;

    iput-object p3, p0, Le/n/a/c$g;->f:Le/n/a/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Le/n/a/c;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/n/a/c$g;->g:Le/n/a/c;

    iget-object v2, p0, Le/n/a/c$g;->e:Le/n/a/a;

    invoke-static {v1, v2}, Le/n/a/c;->a(Le/n/a/c;Le/n/a/a;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Le/n/a/c$g;->f:Le/n/a/c$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/n/a/c$i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
