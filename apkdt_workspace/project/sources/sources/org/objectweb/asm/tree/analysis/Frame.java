package org.objectweb.asm.tree.analysis;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.List;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.Type;
import org.objectweb.asm.TypeReference;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.IincInsnNode;
import org.objectweb.asm.tree.InvokeDynamicInsnNode;
import org.objectweb.asm.tree.LabelNode;
import org.objectweb.asm.tree.MethodInsnNode;
import org.objectweb.asm.tree.MultiANewArrayInsnNode;
import org.objectweb.asm.tree.VarInsnNode;
import org.objectweb.asm.tree.analysis.Value;

/* loaded from: mmessage.apk:org/objectweb/asm/tree/analysis/Frame.SCL.lombok */
public class Frame<V extends Value> {
    private static final int MAX_STACK_SIZE = 65536;
    private V returnValue;
    private V[] values;
    private int numLocals;
    private int numStack;
    private int maxStack;

    public Frame(int i, int i2) {
        this.values = (V[]) new Value[i + (i2 >= 0 ? i2 : 4)];
        this.numLocals = i;
        this.numStack = 0;
        this.maxStack = i2 >= 0 ? i2 : 65536;
    }

    public Frame(Frame<? extends V> frame) {
        this(frame.numLocals, frame.values.length - frame.numLocals);
        init(frame);
    }

    public Frame<V> init(Frame<? extends V> frame) {
        this.returnValue = frame.returnValue;
        if (this.values.length < frame.values.length) {
            this.values = (V[]) ((Value[]) frame.values.clone());
        } else {
            System.arraycopy(frame.values, 0, this.values, 0, frame.values.length);
        }
        this.numLocals = frame.numLocals;
        this.numStack = frame.numStack;
        this.maxStack = frame.maxStack;
        return this;
    }

    public void initJumpTarget(int opcode, LabelNode target) {
    }

    public void setReturn(V v) {
        this.returnValue = v;
    }

    public int getLocals() {
        return this.numLocals;
    }

    public int getMaxStackSize() {
        return this.maxStack;
    }

    public V getLocal(int index) {
        if (index >= this.numLocals) {
            throw new IndexOutOfBoundsException("Trying to get an inexistant local variable " + index);
        }
        return this.values[index];
    }

    public void setLocal(int index, V value) {
        if (index >= this.numLocals) {
            throw new IndexOutOfBoundsException("Trying to set an inexistant local variable " + index);
        }
        this.values[index] = value;
    }

    public int getStackSize() {
        return this.numStack;
    }

    public V getStack(int index) {
        return this.values[this.numLocals + index];
    }

    public void setStack(int index, V value) {
        this.values[this.numLocals + index] = value;
    }

    public void clearStack() {
        this.numStack = 0;
    }

    public V pop() {
        if (this.numStack == 0) {
            throw new IndexOutOfBoundsException("Cannot pop operand off an empty stack.");
        }
        V[] vArr = this.values;
        int i = this.numLocals;
        int i2 = this.numStack - 1;
        this.numStack = i2;
        return vArr[i + i2];
    }

    public void push(V v) {
        if (this.numLocals + this.numStack >= this.values.length) {
            if (this.numLocals + this.numStack >= this.maxStack) {
                throw new IndexOutOfBoundsException("Insufficient maximum stack size.");
            }
            V[] vArr = this.values;
            this.values = (V[]) new Value[2 * this.values.length];
            System.arraycopy(vArr, 0, this.values, 0, vArr.length);
        }
        V[] vArr2 = this.values;
        int i = this.numLocals;
        int i2 = this.numStack;
        this.numStack = i2 + 1;
        vArr2[i + i2] = v;
    }

    public void execute(AbstractInsnNode insn, Interpreter<V> interpreter) throws AnalyzerException {
        V local;
        switch (insn.getOpcode()) {
            case 0:
            case 167:
            case 169:
                return;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                push(interpreter.newOperation(insn));
                return;
            case 19:
            case 20:
            case 26:
            case 27:
            case 28:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
            case 30:
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case Opcodes.V15 /* 59 */:
            case 60:
            case 61:
            case Opcodes.V18 /* 62 */:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case TypeReference.NEW /* 68 */:
            case TypeReference.CONSTRUCTOR_REFERENCE /* 69 */:
            case TypeReference.METHOD_REFERENCE /* 70 */:
            case TypeReference.CAST /* 71 */:
            case TypeReference.CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT /* 72 */:
            case TypeReference.METHOD_INVOCATION_TYPE_ARGUMENT /* 73 */:
            case TypeReference.CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT /* 74 */:
            case TypeReference.METHOD_REFERENCE_TYPE_ARGUMENT /* 75 */:
            case 76:
            case 77:
            case 78:
            case 196:
            default:
                throw new AnalyzerException(insn, "Illegal opcode " + insn.getOpcode());
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
                push(interpreter.copyOperation(insn, getLocal(((VarInsnNode) insn).var)));
                return;
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 96:
            case Opcodes.LADD /* 97 */:
            case Opcodes.FADD /* 98 */:
            case Opcodes.DADD /* 99 */:
            case 100:
            case 101:
            case 102:
            case Opcodes.DSUB /* 103 */:
            case 104:
            case Opcodes.LMUL /* 105 */:
            case Opcodes.FMUL /* 106 */:
            case Opcodes.DMUL /* 107 */:
            case 108:
            case 109:
            case Opcodes.FDIV /* 110 */:
            case Opcodes.DDIV /* 111 */:
            case 112:
            case Opcodes.LREM /* 113 */:
            case Opcodes.FREM /* 114 */:
            case Opcodes.DREM /* 115 */:
            case 120:
            case Opcodes.LSHL /* 121 */:
            case 122:
            case Opcodes.LSHR /* 123 */:
            case 124:
            case Opcodes.LUSHR /* 125 */:
            case 126:
            case 127:
            case 128:
            case Opcodes.LOR /* 129 */:
            case 130:
            case Opcodes.LXOR /* 131 */:
            case 148:
            case 149:
            case Opcodes.FCMPG /* 150 */:
            case 151:
            case Opcodes.DCMPG /* 152 */:
                push(interpreter.binaryOperation(insn, pop(), pop()));
                return;
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
                V copyOperation = interpreter.copyOperation(insn, pop());
                int var = ((VarInsnNode) insn).var;
                setLocal(var, copyOperation);
                if (copyOperation.getSize() == 2) {
                    setLocal(var + 1, interpreter.newEmptyValue(var + 1));
                }
                if (var > 0 && (local = getLocal(var - 1)) != null && local.getSize() == 2) {
                    setLocal(var - 1, interpreter.newEmptyValue(var - 1));
                    return;
                }
                return;
            case 79:
            case Opcodes.LASTORE /* 80 */:
            case Opcodes.FASTORE /* 81 */:
            case Opcodes.DASTORE /* 82 */:
            case Opcodes.AASTORE /* 83 */:
            case Opcodes.BASTORE /* 84 */:
            case Opcodes.CASTORE /* 85 */:
            case Opcodes.SASTORE /* 86 */:
                interpreter.ternaryOperation(insn, pop(), pop(), pop());
                return;
            case 87:
                if (pop().getSize() == 2) {
                    throw new AnalyzerException(insn, "Illegal use of POP");
                }
                return;
            case Opcodes.POP2 /* 88 */:
                if (pop().getSize() == 1 && pop().getSize() != 1) {
                    throw new AnalyzerException(insn, "Illegal use of POP2");
                }
                return;
            case 89:
                V pop = pop();
                if (pop.getSize() != 1) {
                    throw new AnalyzerException(insn, "Illegal use of DUP");
                }
                push(pop);
                push(interpreter.copyOperation(insn, pop));
                return;
            case Opcodes.DUP_X1 /* 90 */:
                V pop2 = pop();
                V pop3 = pop();
                if (pop2.getSize() != 1 || pop3.getSize() != 1) {
                    throw new AnalyzerException(insn, "Illegal use of DUP_X1");
                }
                push(interpreter.copyOperation(insn, pop2));
                push(pop3);
                push(pop2);
                return;
            case Opcodes.DUP_X2 /* 91 */:
                V pop4 = pop();
                if (pop4.getSize() != 1 || !executeDupX2(insn, pop4, interpreter)) {
                    throw new AnalyzerException(insn, "Illegal use of DUP_X2");
                }
                return;
            case Opcodes.DUP2 /* 92 */:
                V pop5 = pop();
                if (pop5.getSize() == 1) {
                    V pop6 = pop();
                    if (pop6.getSize() == 1) {
                        push(pop6);
                        push(pop5);
                        push(interpreter.copyOperation(insn, pop6));
                        push(interpreter.copyOperation(insn, pop5));
                        return;
                    }
                    throw new AnalyzerException(insn, "Illegal use of DUP2");
                }
                push(pop5);
                push(interpreter.copyOperation(insn, pop5));
                return;
            case Opcodes.DUP2_X1 /* 93 */:
                V pop7 = pop();
                if (pop7.getSize() == 1) {
                    V pop8 = pop();
                    if (pop8.getSize() == 1) {
                        V pop9 = pop();
                        if (pop9.getSize() == 1) {
                            push(interpreter.copyOperation(insn, pop8));
                            push(interpreter.copyOperation(insn, pop7));
                            push(pop9);
                            push(pop8);
                            push(pop7);
                            return;
                        }
                    }
                } else {
                    V pop10 = pop();
                    if (pop10.getSize() == 1) {
                        push(interpreter.copyOperation(insn, pop7));
                        push(pop10);
                        push(pop7);
                        return;
                    }
                }
                throw new AnalyzerException(insn, "Illegal use of DUP2_X1");
            case Opcodes.DUP2_X2 /* 94 */:
                V pop11 = pop();
                if (pop11.getSize() == 1) {
                    V pop12 = pop();
                    if (pop12.getSize() == 1) {
                        V pop13 = pop();
                        if (pop13.getSize() == 1) {
                            V pop14 = pop();
                            if (pop14.getSize() == 1) {
                                push(interpreter.copyOperation(insn, pop12));
                                push(interpreter.copyOperation(insn, pop11));
                                push(pop14);
                                push(pop13);
                                push(pop12);
                                push(pop11);
                                return;
                            }
                        } else {
                            push(interpreter.copyOperation(insn, pop12));
                            push(interpreter.copyOperation(insn, pop11));
                            push(pop13);
                            push(pop12);
                            push(pop11);
                            return;
                        }
                    }
                } else if (executeDupX2(insn, pop11, interpreter)) {
                    return;
                }
                throw new AnalyzerException(insn, "Illegal use of DUP2_X2");
            case Opcodes.SWAP /* 95 */:
                V pop15 = pop();
                V pop16 = pop();
                if (pop16.getSize() != 1 || pop15.getSize() != 1) {
                    throw new AnalyzerException(insn, "Illegal use of SWAP");
                }
                push(interpreter.copyOperation(insn, pop15));
                push(interpreter.copyOperation(insn, pop16));
                return;
            case 116:
            case Opcodes.LNEG /* 117 */:
            case Opcodes.FNEG /* 118 */:
            case Opcodes.DNEG /* 119 */:
                push(interpreter.unaryOperation(insn, pop()));
                return;
            case Opcodes.IINC /* 132 */:
                int var2 = ((IincInsnNode) insn).var;
                setLocal(var2, interpreter.unaryOperation(insn, getLocal(var2)));
                return;
            case Opcodes.I2L /* 133 */:
            case Opcodes.I2F /* 134 */:
            case Opcodes.I2D /* 135 */:
            case Opcodes.L2I /* 136 */:
            case Opcodes.L2F /* 137 */:
            case Opcodes.L2D /* 138 */:
            case Opcodes.F2I /* 139 */:
            case Opcodes.F2L /* 140 */:
            case Opcodes.F2D /* 141 */:
            case Opcodes.D2I /* 142 */:
            case Opcodes.D2L /* 143 */:
            case Opcodes.D2F /* 144 */:
            case Opcodes.I2B /* 145 */:
            case Opcodes.I2C /* 146 */:
            case Opcodes.I2S /* 147 */:
                push(interpreter.unaryOperation(insn, pop()));
                return;
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
                interpreter.unaryOperation(insn, pop());
                return;
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case Opcodes.IF_ICMPLE /* 164 */:
            case 165:
            case 166:
            case 181:
                interpreter.binaryOperation(insn, pop(), pop());
                return;
            case Opcodes.JSR /* 168 */:
                push(interpreter.newOperation(insn));
                return;
            case Opcodes.TABLESWITCH /* 170 */:
            case Opcodes.LOOKUPSWITCH /* 171 */:
                interpreter.unaryOperation(insn, pop());
                return;
            case Opcodes.IRETURN /* 172 */:
            case Opcodes.LRETURN /* 173 */:
            case Opcodes.FRETURN /* 174 */:
            case Opcodes.DRETURN /* 175 */:
            case 176:
                V pop17 = pop();
                interpreter.unaryOperation(insn, pop17);
                interpreter.returnOperation(insn, pop17, this.returnValue);
                return;
            case 177:
                if (this.returnValue != null) {
                    throw new AnalyzerException(insn, "Incompatible return type");
                }
                return;
            case 178:
                push(interpreter.newOperation(insn));
                return;
            case Opcodes.PUTSTATIC /* 179 */:
                interpreter.unaryOperation(insn, pop());
                return;
            case 180:
                push(interpreter.unaryOperation(insn, pop()));
                return;
            case 182:
            case 183:
            case 184:
            case 185:
                executeInvokeInsn(insn, ((MethodInsnNode) insn).desc, interpreter);
                return;
            case Opcodes.INVOKEDYNAMIC /* 186 */:
                executeInvokeInsn(insn, ((InvokeDynamicInsnNode) insn).desc, interpreter);
                return;
            case 187:
                push(interpreter.newOperation(insn));
                return;
            case 188:
            case Opcodes.ANEWARRAY /* 189 */:
            case Opcodes.ARRAYLENGTH /* 190 */:
                push(interpreter.unaryOperation(insn, pop()));
                return;
            case Opcodes.ATHROW /* 191 */:
                interpreter.unaryOperation(insn, pop());
                return;
            case 192:
            case 193:
                push(interpreter.unaryOperation(insn, pop()));
                return;
            case Opcodes.MONITORENTER /* 194 */:
            case Opcodes.MONITOREXIT /* 195 */:
                interpreter.unaryOperation(insn, pop());
                return;
            case Opcodes.MULTIANEWARRAY /* 197 */:
                List<? extends V> arrayList = new ArrayList<>();
                for (int i = ((MultiANewArrayInsnNode) insn).dims; i > 0; i--) {
                    arrayList.add(0, pop());
                }
                push(interpreter.naryOperation(insn, arrayList));
                return;
            case 198:
            case 199:
                interpreter.unaryOperation(insn, pop());
                return;
        }
    }

    private boolean executeDupX2(AbstractInsnNode insn, V value1, Interpreter<V> interpreter) throws AnalyzerException {
        V value2 = pop();
        if (value2.getSize() == 1) {
            V value3 = pop();
            if (value3.getSize() == 1) {
                push(interpreter.copyOperation(insn, value1));
                push(value3);
                push(value2);
                push(value1);
                return true;
            }
            return false;
        }
        push(interpreter.copyOperation(insn, value1));
        push(value2);
        push(value1);
        return true;
    }

    private void executeInvokeInsn(AbstractInsnNode insn, String methodDescriptor, Interpreter<V> interpreter) throws AnalyzerException {
        ArrayList arrayList = new ArrayList();
        for (int i = Type.getArgumentTypes(methodDescriptor).length; i > 0; i--) {
            arrayList.add(0, pop());
        }
        if (insn.getOpcode() != 184 && insn.getOpcode() != 186) {
            arrayList.add(0, pop());
        }
        if (Type.getReturnType(methodDescriptor) == Type.VOID_TYPE) {
            interpreter.naryOperation(insn, arrayList);
        } else {
            push(interpreter.naryOperation(insn, arrayList));
        }
    }

    public boolean merge(Frame<? extends V> frame, Interpreter<V> interpreter) throws AnalyzerException {
        if (this.numStack != frame.numStack) {
            throw new AnalyzerException(null, "Incompatible stack heights");
        }
        boolean z = false;
        for (int i = 0; i < this.numLocals + this.numStack; i++) {
            V merge = interpreter.merge(this.values[i], frame.values[i]);
            if (!merge.equals(this.values[i])) {
                this.values[i] = merge;
                z = true;
            }
        }
        return z;
    }

    public boolean merge(Frame<? extends V> frame, boolean[] zArr) {
        boolean z = false;
        for (int i = 0; i < this.numLocals; i++) {
            if (!zArr[i] && !this.values[i].equals(frame.values[i])) {
                ((V[]) this.values)[i] = ((Object[]) frame.values)[i];
                z = true;
            }
        }
        return z;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < getLocals(); i++) {
            stringBuilder.append(getLocal(i));
        }
        stringBuilder.append(' ');
        for (int i2 = 0; i2 < getStackSize(); i2++) {
            stringBuilder.append(getStack(i2).toString());
        }
        return stringBuilder.toString();
    }
}
