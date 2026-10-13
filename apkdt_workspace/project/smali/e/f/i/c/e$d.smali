.class Le/f/i/c/e$d;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Le/f/b/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/c/e;->c(Le/f/b/a/d;Le/f/i/g/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/f/i/g/e;

.field final synthetic b:Le/f/i/c/e;


# direct methods
.method constructor <init>(Le/f/i/c/e;Le/f/i/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/c/e$d;->b:Le/f/i/c/e;

    iput-object p2, p0, Le/f/i/c/e$d;->a:Le/f/i/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/i/c/e$d;->b:Le/f/i/c/e;

    invoke-static {v0}, Le/f/i/c/e;->d(Le/f/i/c/e;)Le/f/c/f/k;

    move-result-object v0

    iget-object v1, p0, Le/f/i/c/e$d;->a:Le/f/i/g/e;

    invoke-virtual {v1}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Le/f/c/f/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
