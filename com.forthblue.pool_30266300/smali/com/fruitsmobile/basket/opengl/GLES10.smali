.class public Lcom/fruitsmobile/basket/opengl/GLES10;
.super Ljava/lang/Object;
.source "GLES10.java"

# interfaces
.implements Lcom/fruitsmobile/basket/opengl/GL10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 9
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLES10;->nativeClassInit()V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public native bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V
.end method

.method public native glActiveTexture(I)V
.end method

.method public native glAlphaFunc(IF)V
.end method

.method public native glAlphaFuncx(II)V
.end method

.method public native glBindTexture(II)V
.end method

.method public native glBlendFunc(II)V
.end method

.method public native glClear(I)V
.end method

.method public native glClearColor(FFFF)V
.end method

.method public native glClearColorx(IIII)V
.end method

.method public native glClearDepthf(F)V
.end method

.method public native glClearDepthx(I)V
.end method

.method public native glClearStencil(I)V
.end method

.method public native glClientActiveTexture(I)V
.end method

.method public native glColor4f(FFFF)V
.end method

.method public native glColor4x(IIII)V
.end method

.method public native glColorMask(ZZZZ)V
.end method

.method public native glColorPointer(IIILjava/nio/Buffer;)V
.end method

.method public native glColorPointerV(IIILjava/nio/Buffer;I)V
.end method

.method public native glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
.end method

.method public native glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glCopyTexImage2D(IIIIIIII)V
.end method

.method public native glCopyTexSubImage2D(IIIIIIII)V
.end method

.method public native glCullFace(I)V
.end method

.method public native glDeleteTexture(I)V
.end method

.method public native glDeleteTextures(ILjava/nio/IntBuffer;)V
.end method

.method public native glDeleteTextures(I[II)V
.end method

.method public native glDepthFunc(I)V
.end method

.method public native glDepthMask(Z)V
.end method

.method public native glDepthRangef(FF)V
.end method

.method public native glDepthRangex(II)V
.end method

.method public native glDisable(I)V
.end method

.method public native glDisableClientState(I)V
.end method

.method public native glDrawArrays(III)V
.end method

.method public native glDrawElements(IIILjava/nio/Buffer;)V
.end method

.method public native glEnable(I)V
.end method

.method public native glEnableClientState(I)V
.end method

.method public native glFinish()V
.end method

.method public native glFlush()V
.end method

.method public native glFogf(IF)V
.end method

.method public native glFogfv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glFogfv(I[FI)V
.end method

.method public native glFogx(II)V
.end method

.method public native glFogxv(ILjava/nio/IntBuffer;)V
.end method

.method public native glFogxv(I[II)V
.end method

.method public native glFrontFace(I)V
.end method

.method public native glFrustumf(FFFFFF)V
.end method

.method public native glFrustumx(IIIIII)V
.end method

.method public native glGenTexture()I
.end method

.method public native glGetError()I
.end method

.method public native glGetIntegerv(ILjava/nio/IntBuffer;)V
.end method

.method public native glGetIntegerv(I[II)V
.end method

.method public native glGetString(I)Ljava/lang/String;
.end method

.method public native glHint(II)V
.end method

.method public native glLightModelf(IF)V
.end method

.method public native glLightModelfv(ILjava/nio/FloatBuffer;)V
.end method

.method public native glLightModelfv(I[FI)V
.end method

.method public native glLightModelx(II)V
.end method

.method public native glLightModelxv(ILjava/nio/IntBuffer;)V
.end method

.method public native glLightModelxv(I[II)V
.end method

.method public native glLightf(IIF)V
.end method

.method public native glLightf4(IIFFFF)V
.end method

.method public native glLightfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glLightfv(II[FI)V
.end method

.method public native glLightx(III)V
.end method

.method public native glLightxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glLightxv(II[II)V
.end method

.method public native glLineWidth(F)V
.end method

.method public native glLineWidthx(I)V
.end method

.method public native glLoadIdentity()V
.end method

.method public native glLoadMatrixf(Ljava/nio/Buffer;)V
.end method

.method public native glLoadMatrixx(Ljava/nio/IntBuffer;)V
.end method

.method public native glLoadMatrixx([II)V
.end method

.method public native glLogicOp(I)V
.end method

.method public native glMaterialf(IIF)V
.end method

.method public native glMaterialfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glMaterialfv(II[FI)V
.end method

.method public native glMaterialx(III)V
.end method

.method public native glMaterialxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glMaterialxv(II[II)V
.end method

.method public native glMatrixMode(I)V
.end method

.method public native glMultMatrixf(Ljava/nio/FloatBuffer;)V
.end method

.method public native glMultMatrixf([FI)V
.end method

.method public native glMultMatrixx(Ljava/nio/IntBuffer;)V
.end method

.method public native glMultMatrixx([II)V
.end method

.method public native glMultiTexCoord4f(IFFFF)V
.end method

.method public native glMultiTexCoord4x(IIIII)V
.end method

.method public native glNormal3f(FFF)V
.end method

.method public native glNormal3x(III)V
.end method

.method public native glNormalPointer(IILjava/nio/Buffer;)V
.end method

.method public native glOrthof(FFFFFF)V
.end method

.method public native glOrthox(IIIIII)V
.end method

.method public native glPixelStorei(II)V
.end method

.method public native glPointSize(F)V
.end method

.method public native glPointSizex(I)V
.end method

.method public native glPolygonOffset(FF)V
.end method

.method public native glPolygonOffsetx(II)V
.end method

.method public native glPopMatrix()V
.end method

.method public native glPushMatrix()V
.end method

.method public native glReadPixels(IIIIIILjava/nio/Buffer;)V
.end method

.method public native glRotatef(FFFF)V
.end method

.method public native glRotatex(IIII)V
.end method

.method public native glSampleCoverage(FZ)V
.end method

.method public native glSampleCoveragex(IZ)V
.end method

.method public native glScalef(FFF)V
.end method

.method public native glScalex(III)V
.end method

.method public native glScissor(IIII)V
.end method

.method public native glShadeModel(I)V
.end method

.method public native glStencilFunc(III)V
.end method

.method public native glStencilMask(I)V
.end method

.method public native glStencilOp(III)V
.end method

.method public native glTexCoordPointer(IIILjava/nio/Buffer;)V
.end method

.method public native glTexCoordPointerV(IIILjava/nio/Buffer;I)V
.end method

.method public native glTexEnvf(IIF)V
.end method

.method public native glTexEnvfv(IILjava/nio/FloatBuffer;)V
.end method

.method public native glTexEnvfv(II[FI)V
.end method

.method public native glTexEnvx(III)V
.end method

.method public native glTexEnvxv(IILjava/nio/IntBuffer;)V
.end method

.method public native glTexEnvxv(II[II)V
.end method

.method public native glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glTexParameterf(IIF)V
.end method

.method public native glTexParameterx(III)V
.end method

.method public native glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public native glTranslatef(FFF)V
.end method

.method public native glTranslatex(III)V
.end method

.method public glVersion()I
    .locals 1

    .prologue
    .line 15
    const/high16 v0, 0x10000

    return v0
.end method

.method public native glVertexPointer(IIILjava/nio/Buffer;)V
.end method

.method public native glVertexPointerV(IIILjava/nio/Buffer;I)V
.end method

.method public native glViewport(IIII)V
.end method
